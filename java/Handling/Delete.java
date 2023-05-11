package Handling;
import java.io.File;

public class Delete {
    public static void main(String[]args){

    File file =new File("/home/jegan/Desktop/Assignments/java/tttttttt.txt");
    if (file.delete()) {
    System.out.println("Deleted successfully");
    
    }
    if(!file.exists()){
        System.out.print("File already deleted");
    }
}
}

