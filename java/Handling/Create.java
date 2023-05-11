package Handling;
import java.io.File;

class Create{
    public static void main(String[]args){
        try {
            File file =new File("/home/jegan/Desktop/Assignments/java/tttttttt.txt");
            if (file.createNewFile()) {
                System.out.println("file created successfully");
                
            } else{
                System.out.println("file already exists");
            }
            
        } catch (Exception e) {
          System.out.println("Error occured");
        }
    }
}