interface Ai{
    void left();
    void right();
    void staight();
    void backward();
}

class Robot implements Ai{

    @Override
    public void left() {
        System.out.println("Turn left");
       
    }

    public void right() {
        System.out.println("Turn Right");
       
    }

    @Override
    public void staight() {
        System.out.println("Turn straight");

    }

    @Override
    public void backward() {
        System.out.println("Turn baclward");
    }
}

public class Control{
    public static void main(String[]args){
        Robot robo=new Robot();
        robo.backward();
        robo.left();
        robo.right();
        robo.staight();
    }
}