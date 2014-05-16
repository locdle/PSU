// This is supporting software for CS322 Compilers and Language Design II
// Copyright (c) Portland State University
// 
// IR code generator for miniJava's AST.
//
// (Starting version.)
//

import java.lang.reflect.Array;
import java.util.*;
import java.io.*;

import ast.*;
import ir.*;

public class IRGen {

    static class GenException extends Exception {
        public GenException(String msg) {
            super(msg);
        }
    }

    //------------------------------------------------------------------------------
    // Class Information Record
    //-------------------------
    //  For keeping all useful information about a class declaration
    //  for later use in the codegen.
    //
    static class ClassInfo {
        String name;            // class name
        ClassInfo parent;            // ptr to parent's record
        boolean isMainClass;        // true if class contains "main"
        Ast.ClassDecl classDecl;        // class source ast
        ArrayList<String> vtable;        // (virtual) method table
        HashMap<String, Integer> offsets;    // field variable offsets
        int objSize;            // object size

        // Constructor -- clone a parent's record
        //
        ClassInfo(Ast.ClassDecl cdecl, ClassInfo parent) {
            this.name = cdecl.nm;
            this.parent = parent;
            this.isMainClass = false;
            this.classDecl = cdecl;
            this.vtable = new ArrayList<String>(parent.vtable);
            this.offsets = new HashMap<String, Integer>(parent.offsets);
            this.objSize = parent.objSize;
        }

        // Constructor -- create a new record
        //
        ClassInfo(Ast.ClassDecl cdecl) {
            this.name = cdecl.nm;
            this.parent = null;
            this.isMainClass = false;
            this.classDecl = cdecl;
            this.vtable = new ArrayList<String>();
            this.offsets = new HashMap<String, Integer>();
            this.objSize = IR.Type.PTR.size;    // reserve space for ptr to class
        }

        // Utility Routines
        // ----------------
        // For accessing information stored in class information record
        //

        // Find method's base class record
        //
        ClassInfo methodBaseClass(String mname) throws Exception {
            for (Ast.MethodDecl mdecl : classDecl.mthds)
                if (mdecl.nm.equals(mname))
                    return this;
            if (parent != null)
                return parent.methodBaseClass(mname);
            throw new GenException("Can't find base class for method " + mname);
        }

        // Find method's return type
        //
        Ast.Type methodType(String mname) throws Exception {
            for (Ast.MethodDecl mdecl : classDecl.mthds)
                if (mdecl.nm.equals(mname))
                    return mdecl.t;
            if (parent != null)
                return parent.methodType(mname);
            throw new GenException("Can't find MethodDecl for method " + mname);
        }

        // Return method's vtable offset
        //
        int methodOffset(String mname) {
            return vtable.indexOf(mname) * IR.Type.PTR.size;
        }

        // Find field variable's type
        //
        Ast.Type fieldType(String fname) throws Exception {
            for (Ast.VarDecl fdecl : classDecl.flds) {
                if (fdecl.nm.equals(fname))
                    return fdecl.t;
            }
            if (parent != null)
                return parent.fieldType(fname);
            throw new GenException("Can't find VarDecl for field " + fname);
        }

        // Return field variable's offset
        //
        int fieldOffset(String fname) {
            return offsets.get(fname);
        }

        public String toString() {
            return "ClassInfo: " + " " + name + " " + parent + " " + isMainClass
                    + " " + vtable + " " + offsets + " " + objSize + " " + classDecl;
        }
    }

    // End of Class Information Record ---------------------------------------------


    //------------------------------------------------------------------------------
    // Other Supporting Data Structures
    //---------------------------------

    // CodePack
    // --------
    // For returning <type,src,code> tuple from gen routines
    //
    static class CodePack {
        Ast.Type type;
        IR.Src src;
        List<IR.Inst> code;

        CodePack(Ast.Type type, IR.Src src, List<IR.Inst> code) {
            this.type = type;
            this.src = src;
            this.code = code;
        }

        CodePack(Ast.Type type, IR.Src src) {
            this.type = type;
            this.src = src;
            code = new ArrayList<IR.Inst>();
        }
    }

    // AddrPack
    // --------
    // For returning <type,addr,code> tuple from genAddr routines
    //
    static class AddrPack {
        Ast.Type type;
        IR.Addr addr;
        List<IR.Inst> code;

        AddrPack(Ast.Type type, IR.Addr addr, List<IR.Inst> code) {
            this.type = type;
            this.addr = addr;
            this.code = code;
        }
    }

    // Env
    // ---
    // For keeping track of local variables and parameters and for finding
    // their types.
    //
    private static class Env extends HashMap<String, Ast.Type> {
    }

    // End of Other Supporting Data Structures -------------------------------------


    //------------------------------------------------------------------------------
    // Global Variables
    // ----------------
    //

    // The whole collection of ClassInfo records
    private static HashMap<String, ClassInfo> classInfos
            = new HashMap<String, ClassInfo>();

    // IR code representation of the current object
    private static IR.Src thisObj = new IR.Id("obj");

    // Constant nodes for convenience
    private static final Ast.Type AstIntType = new Ast.IntType();
    private static final Ast.Type AstBoolType = new Ast.BoolType();


    //------------------------------------------------------------------------------
    // The Main Codegen Routine
    //-------------------------
    //
    public static void main(String[] args) throws Exception {
        if (args.length == 1) {
            FileInputStream stream = new FileInputStream(args[0]);
            Ast.Program p = new astParser(stream).Program();
            stream.close();
            IR.Program ir = IRGen.gen(p);
            System.out.print(ir.toString());
        } else {
            System.out.println("You must provide an input file name.");
        }
    }

    // Sort ClassDecls, so that parent will be visited before children.
    //
    private static Ast.ClassDecl[] topoSort(Ast.ClassDecl[] classes) {
        List<Ast.ClassDecl> cl = new ArrayList<Ast.ClassDecl>();
        Vector<String> done = new Vector<String>();
        int cnt = classes.length;
        while (cnt > 0) {
            for (Ast.ClassDecl cd : classes)
                if (!done.contains(cd.nm)
                        && ((cd.pnm == null) || done.contains(cd.pnm))) {
                    cl.add(cd);
                    done.add(cd.nm);
                    cnt--;
                }
        }
        return cl.toArray(new Ast.ClassDecl[0]);
    }

    // Create class info record
    //
    // Codegen Guideline:
    // 1. If parent exists, clone parent's record; otherwise create a new one
    // 2. Walk the MethodDecl list. If a method is not in the v-table, add it in;
    // 3  If the "main" method is in the list, set 'isMainClass' flag to true
    // 4. Compute offset values for field variables
    // 5. Decide object's size
    //
    private static ClassInfo createClassInfo(Ast.ClassDecl n) throws Exception {
        ClassInfo cinfo = (n.pnm != null) ?
                new ClassInfo(n, classInfos.get(n.pnm)) : new ClassInfo(n);
        //start coding
        for (Ast.MethodDecl methodDecl: n.mthds){
              if (!(cinfo.vtable.contains(methodDecl.nm))){
                  cinfo.vtable.add(methodDecl.nm);
              }
              if (cinfo.vtable.contains("main")){
                  cinfo.isMainClass = true;
              }
        }

        for(Ast.VarDecl varDecl: n.flds){
           cinfo.offsets.put(varDecl.nm, cinfo.objSize);
           cinfo.objSize += gen(varDecl.t).size  ;
        }
        return cinfo;
    }

    //------------------------------------------------------------------------------
    // Codegen Routines for Individual AST Nodes
    //------------------------------------------

    // Program ---
    // ClassDecl[] classes;
    //
    // Three passes over class decls:
    //  0. topo-sort class decls
    //  1. create class info records
    //  2. generate IR code
    //     2.1 generate list of static data (i.e. class descriptors)
    //     2.2 generate list of functions
    //
    public static IR.Program gen(Ast.Program n) throws Exception {
        Ast.ClassDecl[] classes = topoSort(n.classes);
        ClassInfo cinfo;
        for (Ast.ClassDecl c : classes) {
            cinfo = createClassInfo(c);
            classInfos.put(c.nm, cinfo);
        }
        List<IR.Data> allData = new ArrayList<IR.Data>();
        List<IR.Func> allFuncs = new ArrayList<IR.Func>();
        for (Ast.ClassDecl c : classes) {
            cinfo = classInfos.get(c.nm);
            IR.Data data = genData(c, cinfo);
            List<IR.Func> funcs = gen(c, cinfo);
            if (data != null)
                allData.add(data);
            allFuncs.addAll(funcs);
        }
        return new IR.Program(allData, allFuncs);
    }

    // ClassDecl ---
    // String nm, pnm;
    // VarDecl[] flds;
    // MethodDecl[] mthds;
    //

    // 1. Generate static data
    //
    // Codegen Guideline:
    //   1.1 For each method in class's vtable, construct a global label of form
    //       "<base class name>_<method name>" and save it in an IR.Global node
    //   1.2 Assemble the list of IR.Global nodes into an IR.Data node with a
    //       global label "class_<class name>"
    //
    // (Skip this method if class is the static class containing "main".)
    //
    static IR.Data genData(Ast.ClassDecl n, ClassInfo cinfo) throws Exception {
        if (cinfo.isMainClass == true) {
            return null;
        }
        else{
            List<IR.Global> globals = new ArrayList<IR.Global>();
            for (String st : cinfo.vtable) {
                globals.add(new IR.Global(cinfo.methodBaseClass(st).name + "_" + st));

            }
        return new IR.Data(new IR.Global("class_" + n.nm), globals.size()* IR.Type.PTR.size, globals);
        }
    }

    // 2. Generate code
    //
    // Codegen Guideline:
    //   Straightforward -- generate a IR.Func for each mthdDecl.

    static List<IR.Func> gen(Ast.ClassDecl n, ClassInfo cinfo) throws Exception {
        List<IR.Func> listOfFunction = new ArrayList<IR.Func>();
        for(Ast.MethodDecl method: n.mthds){
            IR.Func func = gen(method,cinfo);
            listOfFunction.add(func);
        }
        return listOfFunction;
    }

    // MethodDecl ---
    // Type t;
    // String nm;
    // Param[] params;
    // VarDecl[] vars;
    // Stmt[] stmts;
    //
    // Codegen Guideline:
    // 1. Construct a global label of form "<base class name>_<method name>"
    // 2. Add "obj" into the params list as the 0th item
    // (Skip these two steps if method is "main".)
    // 3. Create an Env() containing all params and all local vars
    // 4. Generate IR code for all statements
    // 5. Return an IR.Func with the above
    //
    static IR.Func gen(Ast.MethodDecl n, ClassInfo cinfo) throws Exception {
        IR.Temp.reset();
        List<String> params = new ArrayList<String>();
        List<String> locals = new ArrayList<String>();
        List<IR.Inst> code = new ArrayList<IR.Inst>();
        String name = n.nm;
        Env env = new Env();
        IR.LabelDec begin = new IR.LabelDec("Begin");
        IR.LabelDec end = new IR.LabelDec("End");

        // Construct a global label of form "<base class name>_<method name>"
        // Add "obj" into the params list as the 0th item
        if (!cinfo.isMainClass) {
            name = cinfo.name + "_" + n.nm;
            params.add("obj");
        }

        // Create an Env() containing all params and all local vars
        code.add(begin);
        for (Ast.Param pr : n.params) {
            params.add(pr.nm);
            env.put(pr.nm, pr.t);
        }
        for (Ast.VarDecl vl : n.vars) {
            locals.add(vl.nm);
            env.put(vl.nm, vl.t);
            if (vl.init != null) {
                code.addAll(gen(vl, cinfo, env));
            }
        }

        // Generate IR code for all statements
        for (Ast.Stmt stmt : n.stmts) {
            code.addAll(gen(stmt, cinfo, env));
        }

        if(cinfo.methodType(n.nm) == null){
            Ast.Stmt returnStmt = new Ast.Return(null);
            code.addAll(gen(returnStmt, cinfo, env));
        }
        code.add(end);

        return new IR.Func(name, params, locals, code);

    }

    // VarDecl ---
    // Type t;
    // String nm;
    // Exp init;
    //
    // Codegen Guideline:
    // 1. If init exp exists, generate IR code for it and assign result to var
    // 2. Return generated code (or null if none)
    //
    private static List<IR.Inst> gen(Ast.VarDecl n, ClassInfo cinfo,
                                     Env env) throws Exception {
        if(n.init != null){
            List<IR.Inst> code = new ArrayList<IR.Inst>();
            CodePack p =  gen(n.init,cinfo,env);
            code.addAll(p.code);
            IR.Move move = new IR.Move(new IR.Id(n.nm), p.src);
            code.add(move);
            return code;
        }
        else {
            return null;
        }
    }

    // STATEMENTS

    // Dispatch a generic call to a specific Stmt routine
    //
    static List<IR.Inst> gen(Ast.Stmt n, ClassInfo cinfo, Env env) throws Exception {
        if (n instanceof Ast.Block) return gen((Ast.Block) n, cinfo, env);
        else if (n instanceof Ast.Assign) return gen((Ast.Assign) n, cinfo, env);
        else if (n instanceof Ast.CallStmt) return gen((Ast.CallStmt) n, cinfo, env);
        else if (n instanceof Ast.If) return gen((Ast.If) n, cinfo, env);
        else if (n instanceof Ast.While) return gen((Ast.While) n, cinfo, env);
        else if (n instanceof Ast.Print) return gen((Ast.Print) n, cinfo, env);
        else if (n instanceof Ast.Return) return gen((Ast.Return) n, cinfo, env);
        throw new GenException("Illegal Ast Stmt: " + n);
    }

    // Block ---
    // Stmt[] stmts;
    //
    static List<IR.Inst> gen(Ast.Block n, ClassInfo cinfo, Env env) throws Exception {
        List<IR.Inst> code = new ArrayList<IR.Inst>();
        for(Ast.Stmt stmt: n.stmts){
            code.addAll( gen(stmt, cinfo, env));
        }
        return code;
    }

    //  ---
    // Exp lhs, rhs;
    //
    // Codegen Guideline:
    // 1. call gen() on rhs
    // 2. if lhs is ID, check against Env to see if it's a local var or a param;
    //    if yes, generate an IR.Move instruction
    // 3. otherwise, call genAddr() on lhs, and generate an IR.Store instruction
    //
    static List<IR.Inst> gen(Ast.Assign n, ClassInfo cinfo, Env env) throws Exception {
        List<IR.Inst> code = new ArrayList<IR.Inst>();
        CodePack rhs = gen(n.rhs, cinfo, env);
        code.addAll(rhs.code);

        if (n.lhs instanceof Ast.Id) {
            if((env.containsKey(((Ast.Id) n.lhs).nm))) {
                IR.Dest lhs = new IR.Id(((Ast.Id) n.lhs).nm);
                code.add(new IR.Move(lhs, rhs.src));
            }
            else{
                Ast.Field field = new Ast.Field(new Ast.This(), ((Ast.Id)n.lhs).nm);
                AddrPack p = genAddr(field, cinfo, env);
                code.addAll(p.code);
                code.add(new IR.Store(gen(rhs.type), p.addr, rhs.src));
            }
        }
        else {
            AddrPack p = genAddr(n.lhs, cinfo, env);
            code.addAll(p.code);
            code.add(new IR.Store(gen(rhs.type), p.addr, rhs.src));
        }
        return code;
    }

    // CallStmt ---
    // Exp obj;
    // String nm;
    // Exp[] args;
    //
    //
    static List<IR.Inst> gen(Ast.CallStmt n, ClassInfo cinfo, Env env) throws Exception {
        if (n.obj != null) {
            CodePack p = handleCall(n.obj, n.nm, n.args, cinfo, env, false);
            return p.code;
        }
        throw new GenException("In CallStmt, obj is null " + n);
    }

    // handleCall
    // ----------
    // Common routine for Call and CallStmt nodes
    //
    // Codegen Guideline:
    // 1. Invoke gen() on obj, which returns obj's storage address (and type and code)
    // 2. With type info in the returning CodePack, figure out obj's base class
    // 3. Access the base class's ClassInfo rec to get the method's offset in vtable
    // 4. Add obj's as the 0th argument to the args list
    // 5. Generate an IR.Load to get the class descriptor from obj's storage
    // 6. Generate another IR.Load to get the method's global label
    // 7. If retFlag is set, prepare a temp for receiving return value; also figure
    //    out return value's type (through method's decl in ClassInfo rec)
    // 8. Generate an indirect call with the global label
    //
    static CodePack handleCall(Ast.Exp obj, String name, Ast.Exp[] args,
                               ClassInfo cinfo, Env env, boolean retFlag) throws Exception {


        List<IR.Inst> code = new ArrayList<IR.Inst>();
        List<IR.Src> srcList = new ArrayList<IR.Src>();
        IR.Temp temp = new IR.Temp();
        IR.Temp temp1 = new IR.Temp();

        // Invoke gen() on obj, which returns obj's storage address (and type and code)
        CodePack codePack = gen(obj, cinfo,env);
        srcList.add(codePack.src);
        code.addAll(codePack.code);
        Ast.Type type = codePack.type;

        // obj's base class
        ClassInfo classInfo = classInfos.get(((Ast.ObjType)codePack.type).nm);

        int offset =  classInfo.methodOffset(name);

        for(Ast.Exp e: args) {
            code.addAll(gen(e, cinfo,env).code);
            srcList.add(gen(e, cinfo, env).src);
        }

        // IR.Load to get the class descriptor from obj's storage
        IR.Addr pack = new IR.Addr(codePack.src, 0);
        IR.Load load = new IR.Load(gen(type), temp, pack);
        code.add(load);

        // IR.Load to get the method's global label
        load = new IR.Load(gen(type), temp1, new IR.Addr(temp, offset));
        code.add(load);

        // If retFlag is set, prepare a temp for receiving return value; also figure
        //    out return value's type (through method's decl in ClassInfo rec)
        if(retFlag){
            temp = new IR.Temp();
            IR.Call call = new IR.Call(temp1, true, srcList, temp);
            code.add(call);
        }
        else {
            IR.Call call = new IR.Call(temp1, true, srcList, null);
            code.add(call);
        }

        return new CodePack(type, temp, code );
    }

    // If ---
    // Exp cond;
    // Stmt s1, s2;
    //
    // (See class notes.)
    //
    static List<IR.Inst> gen(Ast.If n, ClassInfo cinfo, Env env) throws Exception {
        List<IR.Inst> code = new ArrayList<IR.Inst>();
        IR.Label L1 = new IR.Label();
        CodePack p = gen(n.cond, cinfo, env);
        code.addAll(p.code);
        code.add(new IR.CJump(IR.RelOP.EQ, p.src, IR.FALSE, L1));
        code.addAll(gen(n.s1, cinfo, env));
        if (n.s2 == null) {
            code.add(new IR.LabelDec(L1.name));
        } else {
            IR.Label L2 = new IR.Label();
            code.add(new IR.Jump(L2));
            code.add(new IR.LabelDec(L1.name));
            code.addAll(gen(n.s2, cinfo, env));
            code.add(new IR.LabelDec(L2.name));
        }
        return code;
    }

    // While ---
    // Exp cond;
    // Stmt s;
    //
    // (See class notes.)
    //
    static List<IR.Inst> gen(Ast.While n, ClassInfo cinfo, Env env) throws Exception {
        List<IR.Inst> code = new ArrayList<IR.Inst>();
        IR.Label L1 = new IR.Label();
        IR.Label L2 = new IR.Label();
        code.add(new IR.LabelDec(L1.name));
        CodePack p = gen(n.cond, cinfo, env);
        code.addAll(p.code);
        code.add(new IR.CJump(IR.RelOP.EQ, p.src, IR.FALSE, L2));
        code.addAll(gen(n.s, cinfo, env));
        code.add(new IR.Jump(L1));
        code.add(new IR.LabelDec(L2.name));
        return code;
    }

    // Print ---
    // Exp arg;
    //
    // Codegen Guideline:
    // 1. If arg is null, generate an IR.Call with "print"
    // 2. If arg is StrLit, generate an IR.Call with "printStr"
    // 3. Otherwise, generate IR code for arg, and use its type info
    //    to decide which of the two functions, "printInt" and "printBool",
    //    to call
    //


    static List<IR.Inst> gen(Ast.Print n, ClassInfo cinfo, Env env) throws Exception {
        List<IR.Inst> code = new ArrayList<IR.Inst>();
        List<IR.Src> srcList = new ArrayList<IR.Src>();

        if (n.arg == null) {
            IR.Call call = new IR.Call(new IR.Global("print"), false, srcList, null);
            code.add(call);
        }
        else if(n.arg instanceof Ast.StrLit){
            CodePack codePack = gen(n.arg, cinfo, env);
            code.addAll(codePack.code);
            srcList.add(codePack.src);
            IR.Call call = new IR.Call(new IR.Global("printStr"), false, srcList, null);
            code.add(call);
        }
        else {
            CodePack codePack = gen(n.arg, cinfo, env);
            code.addAll(codePack.code);
            srcList.add(codePack.src);
            if(codePack.type instanceof Ast.BoolType) {
                IR.Call call = new IR.Call(new IR.Global("printBool"), false, srcList, null);
                code.add(call);
            }
            else  if(codePack.type instanceof Ast.IntType){
                IR.Call call = new IR.Call(new IR.Global("printInt"), false, srcList, null);
                code.add(call);
            }
            else{
                IR.Call call = new IR.Call(new IR.Global("printInt"), false, srcList, null);
                code.add(call);
            }
        }
        return code;

    }

    // Return ---
    // Exp val;
    //
    // Codegen Guideline:
    // 1. If val is non-null, generate IR code for it, and generate an IR.Return
    //    with its value
    // 2. Otherwise, generate an IR.Return with no value
    //
    static List<IR.Inst> gen(Ast.Return n, ClassInfo cinfo, Env env) throws Exception {
        List<IR.Inst> code = new ArrayList<IR.Inst>();
        if(n.val != null){
            // generate an IR.Return with its value
            CodePack p = gen(n.val, cinfo, env);
            code.addAll(p.code);
            code.add(new IR.Return(p.src));
        }
        else{
            // generate an IR.Return with no value
            code.add(new IR.Return());
        }
        return  code;
    }

    // EXPRESSIONS

    // 1. Dispatch a generic gen call to a specific gen routine
    //
    static CodePack gen(Ast.Exp n, ClassInfo cinfo, Env env) throws Exception {
        if (n instanceof Ast.Call) return gen((Ast.Call) n, cinfo, env);
        if (n instanceof Ast.NewObj) return gen((Ast.NewObj) n, cinfo, env);
        if (n instanceof Ast.Field) return gen((Ast.Field) n, cinfo, env);
        if (n instanceof Ast.Id) return gen((Ast.Id) n, cinfo, env);
        if (n instanceof Ast.This) return gen((Ast.This) n, cinfo);
        if (n instanceof Ast.IntLit) return gen((Ast.IntLit) n);
        if (n instanceof Ast.BoolLit) return gen((Ast.BoolLit) n);
        if (n instanceof Ast.StrLit) return gen((Ast.StrLit) n);
        throw new GenException("Exp node not supported in this codegen: " + n);
    }

    // 2. Dispatch a generic genAddr call to a specific genAddr routine
    //    (Only one LHS Exp needs to be implemented for this assignment)
    //
    static AddrPack genAddr(Ast.Exp n, ClassInfo cinfo, Env env) throws Exception {
        if (n instanceof Ast.Field) return genAddr((Ast.Field) n, cinfo, env);
        throw new GenException(" LHS Exp node not supported in this codegen: " + n);
    }

    // Call ---
    // Exp obj;
    // String nm;
    // Exp[] args;
    //
    static CodePack gen(Ast.Call n, ClassInfo cinfo, Env env) throws Exception {
        if (n.obj != null)
            return handleCall(n.obj, n.nm, n.args, cinfo, env, true);
        throw new GenException("In Call, obj is null: " + n);
    }

    // NewObj ---
    // String cn;
    // Exp[] args; (ignored)
    //
    // Codegen Guideline:
    //  1. Use class name to find the corresponding ClassInfo record
    //  2. Find the class's type and object size from the ClassInfo record
    //  3. Cosntruct a malloc call to allocate space for the object
    //  4. Store a pointer to the class's descriptor into the first slot of
    //     the allocated space
    //
    static CodePack gen(Ast.NewObj n, ClassInfo cinfo, Env env) throws Exception {
        List<IR.Src> srcList = new ArrayList<IR.Src>();
        List<IR.Inst> code = new ArrayList<IR.Inst>();
        IR.Temp t = new IR.Temp();
        // Use class name to find the corresponding ClassInfo record
        ClassInfo className = classInfos.get(n.nm);

        // Find the class's type and object size from the ClassInfo record
        Ast.Type type = env.get(n.nm);
        int objsize = className.objSize;
        srcList.add(new IR.IntLit(objsize));

        // Cosntruct a malloc call to allocate space for the object
        IR.Call call =  new IR.Call(new IR.Global("malloc"), false, srcList, t);
        code.add(call);

        // Store a pointer to the class's descriptor into the first slot of the allocated space
        IR.Store store = new IR.Store(IR.Type.PTR, new IR.Addr(t), new IR.Global("class_" + n.nm));
        code.add(store);

        return new CodePack(type,t, code);
    }

    // Field ---
    // Exp obj;
    // String nm;
    //

    // 1. gen()
    //
    // Codegen Guideline:
    //   1.1 Call genAddr to generate field variable's address
    //   1.2
    //
    static CodePack gen(Ast.Field n, ClassInfo cinfo, Env env) throws Exception {
        List<IR.Inst> code = new ArrayList<IR.Inst>();
        IR.Temp temp = new IR.Temp();
        // Call genAddr to generate field variable's address
        AddrPack p = genAddr(n, cinfo, env);
        code.addAll(p.code);

        // Add an IR.Load to get its value
        IR.Load load = new IR.Load(gen(p.type), temp, p.addr);
        code.add(load);

        return new CodePack(p.type, temp, code);
    }

    // 2. genAddr()
    //
    // Codegen Guideline:
    //   2.1 Call gen() on the obj component
    //   2.2 Use the type info to figure out obj's base class
    //   2.3 Access base class's ClassInfo rec to get field variable's offset
    //   2.4 Generate an IR.Addr based on the offset
    //
    static AddrPack genAddr(Ast.Field n, ClassInfo cinfo, Env env) throws Exception {
        List<IR.Inst> code = new ArrayList<IR.Inst>();
        // Call gen() on the obj component
        CodePack p = gen(n.obj, cinfo, env);

        // Use the type info to figure out obj's base class
        Ast.ObjType objtype = (Ast.ObjType)p.type;
        ClassInfo oinfo = classInfos.get(objtype.nm);

        // Access base class's ClassInfo rec to get field variable's offset
        int offset = oinfo.offsets.get(n.nm);

        // Generate an IR.Addr based on the offset
        IR.Addr addr = new IR.Addr(p.src, offset);
        Ast.Type type = oinfo.fieldType(n.nm);

        return new AddrPack(type, addr, code);
    }

    // Id ---
    // String nm;
    //
    // Codegen Guideline:
    //  1. Check to see if the Id is in the env.
    //  2. If so, it means it is a local variable or a parameter. Just return
    //     a CodePack containing the Id.
    //  3. Otherwise, the Id is an instance variable. Convert it into an
    //     Ast.Field node with Ast.This() as its obj, and invoke the gen routine
    //     on this new node
    //
    static CodePack gen(Ast.Id n, ClassInfo cinfo, Env env) throws Exception {
        if(env.containsKey(n.nm)){ //local variable or parameter
            return new CodePack(env.get(n.nm), new IR.Id(n.nm)); // return codepack contain ID
        }
        else{ //field
            Ast.Field field = new Ast.Field(new Ast.This(), n.nm); //convert to field
            return gen(field, cinfo, env); // invoke gen routine on new node
        }
    }

    // This ---
    //
    static CodePack gen(Ast.This n, ClassInfo cinfo) throws Exception {
        return new CodePack(new Ast.ObjType(cinfo.name), thisObj);
    }

    // IntLit ---
    // int i;
    //
    static CodePack gen(Ast.IntLit n) throws Exception {
        return new CodePack(AstIntType, new IR.IntLit(n.i));
    }

    // BoolLit ---
    // boolean b;
    //
    static CodePack gen(Ast.BoolLit n) throws Exception {
        return new CodePack(AstBoolType, n.b ? IR.TRUE : IR.FALSE);
    }

    // StrLit ---
    // String s;
    //
    static CodePack gen(Ast.StrLit n) throws Exception {
        return new CodePack(null, new IR.StrLit(n.s));
    }

    // Type mapping (AST -> IR)
    //
    static IR.Type gen(Ast.Type n) throws Exception {
        if (n == null) return null;
        if (n instanceof Ast.IntType) return IR.Type.INT;
        if (n instanceof Ast.BoolType) return IR.Type.BOOL;
        if (n instanceof Ast.ObjType) return IR.Type.PTR;
        throw new GenException("Invalid Ast type: " + n);
    }

}
