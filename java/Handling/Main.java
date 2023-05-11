package Handling;
import java.io.File;
public class Main {
    public static void main(String[] args) {
        File file = new File("/home/jegan/Desktop/Assignments/Exception1");

        boolean present=file.exists();
        System.out.println("file present :" + present);

        if (present==false) {
            file.mkdirs();           
        }
    }
}
