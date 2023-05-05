class Calculation {              //parent class
    int z;
     
    public void addition(int x, int y) {                   //method
       z = x + y;
       System.out.println("The sum of the given numbers:"+z);
    }
     
    public void Subtraction(int x, int y) {
       z = x - y;
       System.out.println("The difference between the given numbers:"+z);
    }
 }
 
 public class My_Calculation extends Calculation {     //child class
    public void multiplication(int x, int y) {
       z = x * y;
       System.out.println("The product of the given numbers:"+z);
    }
     
    public static void main(String args[]) {

       My_Calculation calc = new My_Calculation();
       calc.addition(15,20);
       calc.Subtraction(15,20);
       calc.multiplication(15,20);
    }
 }