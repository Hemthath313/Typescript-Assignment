package Collections;
import java.util.LinkedHashSet;

public class Linkedhashset1 {
    public static void main(String[] args) {
        LinkedHashSet<String> fruits = new LinkedHashSet<String>();

        fruits.add("apple");
        fruits.add("banana");
        fruits.add("cherry");
        fruits.add("apple"); 
        fruits.add("date");

        System.out.println("LinkedHashfruits: " + fruits);
    }
}

