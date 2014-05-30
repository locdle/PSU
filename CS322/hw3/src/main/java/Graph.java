import java.util.*;

class Node {
    IR.Reg procedure;
    List<Node> neighbor = new ArrayList<Node>();

    public Node(IR.Reg procedure) {
        this.procedure = procedure;
      //  this.neighbor = null;
    }

    public void addNeighbor(Node toAdd){
       // System.out.println("get here");
        this.neighbor.add(toAdd);
    }

}

public class Graph {
      List<Node> nodeList = new ArrayList<Node>();

    public Graph(Map<IR.Reg,Set<Integer>> liveranges) {
        for (Map.Entry<IR.Reg,Set<Integer>> nodes : liveranges.entrySet()){ //list of possible node can have
            Node node = new Node(nodes.getKey());
            for (Map.Entry<IR.Reg,Set<Integer>> nodeNeighbor : liveranges.entrySet()){// list of possible neighbor
                if(nodes.getKey() != nodeNeighbor.getKey()){
                    for (int i :nodes.getValue()){ // check the live range
                        if(nodeNeighbor.getValue().contains(i)){
                            node.addNeighbor(new Node(nodeNeighbor.getKey()));
                            break;//avoid duplicated
                        }
                    }
                }
            }
            nodeList.add(node);
        }
    }
}
