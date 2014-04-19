import java.util.ArrayList;
import java.util.List;

/**
 * Created by locle on 4/18/14.
 */
public class Sample {
    public static void main(String[] args) {
        List<Integer> l = new ArrayList<Integer>();
        l.add(1);
        l.add(2);
        l.add(3);
        l.add(4);
        System.out.println(l);
        int r = 0;
        for (int i : l){
            r = r +i;
        }
        System.out.println(r);
    }
}
