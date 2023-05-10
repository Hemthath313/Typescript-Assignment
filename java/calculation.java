class overload{
    static int multiply (int a,int b){
        return a* b;
        
    }

    static int multiply(int a, int b,int c){
        return a*b*c;
    }
}

class calculation{
     public static void main(String[]args) {
        System.out.println(overload.multiply(2,4));
        System.out.println(overload.multiply(4,6,8));
        
    }
}