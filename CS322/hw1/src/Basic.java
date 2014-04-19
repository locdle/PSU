/**
 * Created by locle on 4/11/14.
 */
public class Basic {
    public static void main(String[] args) {
        String s = "var l = 1";
        for (int i = 0; i < s.length()-1; i++) {
            if(s.substring(i,i+1).equals("=")){
                System.out.println("get to inner loop");
            }
        }
    }
}
