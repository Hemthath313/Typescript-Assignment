public class Function {     //class

    public void area(int side) {                                  //created a two methods called area.
        System.out.println("Area of square: " + (side * side));
    }

    public void area(int length, int width) {
        System.out.println("Area of rectangle: " + (length * width));
    }

    public static void main(String[] args) {
        Function shapes = new Function();
        shapes.area(5);                    //calling the methods
        shapes.area(4, 6); 
    }
}
