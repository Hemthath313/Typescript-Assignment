 abstract class calculation{
    abstract void display();
    void display1(){
        System.out.println("Welcome");
    }
}

class Add extends calculation{
    @Override
    void display(){
        System.out.println("working");
    }
}

public class abs{
     public static void main(String[]args) {
        Add calc =new Add();
        calc.display();

    }
}