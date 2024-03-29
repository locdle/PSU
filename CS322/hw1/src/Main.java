class Main {
  public static void main(String[] args) {
    Stmt s
     = new Seq(new VarDecl("t", new Int(1)),
       new Seq(new VarDecl("i", new Int(1)),
       new Seq(new While(new LT(new Var("i"), new Int(11)),
                         new Seq(new Assign("t", new Mult(new Var("t"), new Var("i"))),
                                 new Assign("i", new Plus(new Var("i"), new Int(1))))),
               new Print(new Var("t")))));
    Program prog = new Program(s);
    System.out.println("Complete program is:");
    prog.print();

    System.out.println("Running on an empty memory:");
    // Memory mem = new Memory();
    // s.exec(mem);
    // s.exec(null);
    prog.run();

    System.out.println("Done!");
  }
}
