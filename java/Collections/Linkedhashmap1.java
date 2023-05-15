package Collections;
import java.util.LinkedHashMap;


public class Linkedhashmap1 {
    
    public static void main(String[] args) {
       
        LinkedHashMap<String, String> Capitals= new LinkedHashMap<>();

    
        Capitals.put("India", "New Delhi");
        Capitals.put("United States", "Washington, D.C.");
        Capitals.put("Japan", "Tokyo");
        Capitals.put("France", "Paris");

       
        String capital = Capitals.get("India");
        System.out.println("Capital of India: " + capital);

      
        Capitals.put("Japan", "Osaka");
        capital = Capitals.get("Japan");
        System.out.println("Updated capital of Japan: " + capital);

        
        Capitals.remove("France");

        for (String country : Capitals.keySet()) {
            capital = Capitals.get(country);
            System.out.println("Capital of " + country + ": " + capital);
        }
    }
}
