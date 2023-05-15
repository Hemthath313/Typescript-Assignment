package Collections;
import java.util.HashMap;

public class Hashmap1 {

    public static void main(String[] args) {
        HashMap<String, Integer> studentMap = new HashMap<>();

        studentMap.put("vasanth", 101);      // Adding elements to the hashmap
        studentMap.put("senthil", 102);
        studentMap.put("karthik", 103);
        studentMap.put("praveen", 104);

        int id = studentMap.get("senthil");            // Accessing elements in the hashmap
        System.out.println("senthil id: " + id);

        studentMap.put("vasanth", 105);            // Update an element in the hashmap
        id = studentMap.get("vasanth");
        System.out.println("Updated id vasanth: " + id);

        studentMap.remove("karthik");                // Removing an element from the hashmap

        boolean isPraveenPresent = studentMap.containsKey("praveen");
        System.out.println("Is praveen present? " + isPraveenPresent);

        System.out.println("HashMap: " + studentMap);
    }
}
