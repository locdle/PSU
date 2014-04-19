import java.util.Hashtable;

class Memory {
  /*private Hashtable<String,Integer> store
     = new Hashtable<String,Integer>();

  int load(String name) {
    Integer i = store.get(name);
    return (i!=null) ? i.intValue() : 0;
  }

  void store(String name, int val) {
    store.put(name, new Integer(val));
  }*/
  private Hashtable<String,Value> memory
        = new Hashtable<String,Value>();

     Value load(String name) {
       Value val = memory.get(name);
       if (val==null) {
         System.out.println("ABORT: Variable " + name + " not defined");
         System.exit(1);
       }
       return val;
     }

     void store(String name, Value val) {
       memory.put(name, val);
     }
}
