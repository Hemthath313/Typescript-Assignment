class Overload{
    static int multiply (int a,int b){
        return a* b;
        
    }

    static int multiply(int a, int b,int c){
        return a*b*c;
    }
}

class Calculation{
     public static void main(String[]args) {
        System.out.println(Overload.multiply(2,4));
        System.out.println(Overload.multiply(4,6,8));
        
    }
}