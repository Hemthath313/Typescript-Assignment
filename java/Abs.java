 abstract class Calculation{
    abstract void display();
    void display1(){
        System.out.println("Welcome");
    }
}

class Add extends Calculation{
    @Override
    void display(){
        System.out.println("working");
    }
}

public class Abs{
     public static void main(String[]args) {
        Add calc =new Add();
        calc.display();

    }
}