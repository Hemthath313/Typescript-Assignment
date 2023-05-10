class Staticblock{
    static{
        System.out.print("hemthath");
    }
}class Test {
 
    //Static variable
    static int i;
    static int j;
 
    //Static blocks
    static
    {
        System.out.println("static block called ");
    }
 
    // Constructor called
    Test() { System.out.println("Constructor called"); }
}
// Main class
class Gf {
    public static void main(String args[])
    {
        Test t1 = new Test();
        Test t2 = new Test();
    }
} 