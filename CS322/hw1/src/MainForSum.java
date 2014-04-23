 class MainForSum {
     public static void main(String[] args) {
         Stmt s = new Seq(new Assign("out", new Int(0)),
                    new Seq(new For("i", new Var("list"),
                            new Seq(new Assign("i", new Plus(new Var("i"), new Int(1))),
                                    new Print(new Var("out")))), new Print(new Var("out"))));


         Stmt s1 = new Seq(new VarDecl("l", new Cons(new Int(1),
                 new Cons(new Int(2),
                         new Cons(new Int(3),
                                 new Cons(new Int(4),
                                         new Nil()))))),
                 new Seq(new VarDecl("r", new Int(0)),
                         new Seq(new Print(new Var("l")),
                                 new Seq (new Call("sum", new Expr[]{new Var("l"), new Var("r")}),
                                         new Print(new Var("r"))))));


         Proc[] procs = new Proc[]{
                 new Proc("sum", new Formal[]{new Formal("list"), new ByRef("out")},s),
         };

         Program prog = new Program(procs, s1);
         System.out.println("Complete program is:");
         prog.print();

         System.out.println("Running program:");
         prog.run();

         System.out.println("Done!");
     }
}
