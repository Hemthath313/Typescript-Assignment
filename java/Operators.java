public class Operators {
    public static void main(String[] args) {
      int sum1 = 100 + 50;   //Arithmetic operator
      int sum2 = sum1 * 20;
      int sum3= sum2 - sum1;
      System.out.println(sum1);
      System.out.println(sum2);
      System.out.println(sum3);

      System.out.println(sum1==sum2);  //comparison operator
      System.out.println(sum1!=sum2);
      System.out.println(sum1<=sum2);

      System.out.println(sum1 > 3 && sum2 < 10); //logical operator
      System.out.println(sum1 > 3 || sum2 < 10);
      System.out.println(!(sum1 > 3 && sum2 < 10));
    }
  }