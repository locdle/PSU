class MainCons {
    public static void main(String[] args) {

        Stmt s = new Seq(new Assign("out", new Nil()),
                    new While(new NonEmpty( new Var("list")),
                            new Seq(new Assign("out",
                                    new Cons(new Head(new Var("list")), new Var("out"))),
                                        new Assign("list", new Tail(new Var("list"))))));

        Stmt s1 = new Seq(new VarDecl("l", new Cons(new Int(1),
                                new Cons(new Int(2),
                                new Cons(new Int(3),
                                new Cons(new Int(4),
                                         new Nil()))))),
                new Seq(new VarDecl("r", new Nil()),
                new Seq(new Print(new Var("l")),
                new Seq (new Call("reverse", new Expr[]{new Var("l"), new Var("r")}),
                        new Print(new Var("r"))))));


        Proc[] procs = new Proc[]{
                new Proc("reverse", new Formal[]{new Formal("list"), new ByRef("out")},s),
        };

        Program prog = new Program(procs, s1);
        System.out.println("Complete program is:");
        prog.print();

        System.out.println("Running program:");
        prog.run();

        System.out.println("Done!");
    }
}
