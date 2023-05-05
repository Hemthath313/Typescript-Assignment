public class Circle {                   //static variables it shared by all instance of class.
    private static int count = 0;        //here count variable shared accross all the instance of circle class
    private double radius;
    
    public Circle(double radius) {
        this.radius = radius;
        count++;
    }
    
    public double getRadius() {
        return radius;
    }
    
    public static int getCount() {             // here we use static method
        return count;                         // This allows us to access the value of count without having to create a new Circle.
    }
    
    public static void main(String[] args) {
        Circle c1 = new Circle(2.5);
        Circle c2 = new Circle(3.0);
        Circle c3 = new Circle(1.5);
        
        System.out.println("Number of circles: " + Circle.getCount());
        System.out.println("Circle 1 radius: " + c1.getRadius());
        System.out.println("Circle 2 radius: " + c2.getRadius());
        System.out.println("Circle 3 radius: " + c3.getRadius());
    }
}
                       
  
    
    
