class MainList {
  public static void main(String[] args) {
    LValue l0 = new EmptyList();
    LValue l1 = new NonEmptyList(new IValue(42), l0);
    LValue l2 = new NonEmptyList(new BValue(true), l1);
    LValue l3 = new NonEmptyList(new FValue(null, "x", new Var("x")), l2);
    LValue l4 = l0;
    for (int i=10; i>0; i--) {
      l4 = new NonEmptyList(new IValue(i), l4);
    }
    System.out.println(l0.show());
    System.out.println(l1.show());
    System.out.println(l2.show());
    System.out.println(l3.show());
    System.out.println(l4.show());
  }
}