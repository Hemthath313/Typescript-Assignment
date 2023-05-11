package Handling;

import java.io.File;
import java.util.Scanner;

public class Read {
    public static void main(String[]args){
        try {
            File file=new File("/home/jegan/Desktop/Assignments/java/tttttttt.txt");
            Scanner scanner=new Scanner(file);                                     

            while (scanner.hasNextLine()) {              //hasnextline used to execute unitil nextline we have
                System.out.println(scanner.nextLine());
                
            }

        } catch (Exception e) {
            System.out.println("Error occured");
           
        }
        
    }
    
}
