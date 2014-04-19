
class MainForMap {
    public static void main(String[] args) {
        Stmt ifEmpty = new Assign("out", new Nil());
        Stmt ifNonEmpty = new Seq(new VarDecl("r", new Apply(new Var("f"), new Var("h"))),
                new Seq(new Call("map", new Expr[]{new Var("f"),new Var("t"),new Var("out")}),
                        new Assign("out", new Cons(new Var("r"), new Var("out")))));

        Stmt s = new Case(new Var("list"), ifEmpty, "h", "t", ifNonEmpty);

        Stmt s1 = new Seq(new VarDecl("l", new Cons(new Int(1),
                new Cons(new Int(2),
                        new Cons(new Int(3),
                                new Cons(new Int(4),
                                        new Nil()))))),
                new Seq(new VarDecl("r", new Nil()),
                        new Seq(new Print(new Var("l")),
                                new Seq (new For("i", new Var("l"),new Call("map",
                                        new Expr[]{new Lambda("x", new Mult(new Var("x"), new Int(2))), new Var("l"),new Var("r")})),
                                new Seq(new Print(new Var("r")),
                                new Seq (new For("i", new Var("x"),new Call("map",
                                        new Expr[]{new Lambda("x", new Plus(new Var("x"), new Int(1))), new Var("r"),new Var("l")})),
                                        new Print(new Var("l"))))))));

        Proc[] procs = new Proc[]{
                new Proc("map", new Formal[]{new ByRef("f"), new Formal("list"), new ByRef("out")},s),
        };

        Program prog = new Program(procs, s1);
        System.out.println("Complete program is:");
        prog.print();

        System.out.println("Running program:");
        prog.run();

        System.out.println("Done!");
    }
}
