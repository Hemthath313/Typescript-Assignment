public class FinalExample {
    public static void main(String[] args) {
        final double PI = 3.14159;
        final int MAX_VALUE = 100;    //if we try to assign pi with another value it will throw an exception

        System.out.println("The value of PI is " + PI);
        System.out.println("The maximum value is " + MAX_VALUE);
    }
}
