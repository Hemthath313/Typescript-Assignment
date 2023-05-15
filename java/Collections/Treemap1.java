package Collections;
import java.util.TreeMap;

public class Treemap1 {
    public static void main(String[] args) {
        TreeMap<String, Integer> map = new TreeMap<>();
        map.put("apple", 1);
        map.put("banana", 2);
        map.put("cherry", 3);

        int value = map.get("banana");
        System.out.println("Value of 'banana': " + value);

        map.remove("apple");

        System.out.println("TreeMap: " + map);
    }
}
   