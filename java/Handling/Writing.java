package Handling;
import java.io.FileWriter;

class Writing{
    public static void main(String[]args){ 
        try {
            FileWriter filewriter=new FileWriter("/home/jegan/Desktop/Assignments/java/tttttttt.txt");
            filewriter.write("welcome to our page");
            filewriter.close();

        System.out.println("successfully written to file");
        } catch (Exception e) {
            System.out.println("Error occured");
           
        }

    }
}