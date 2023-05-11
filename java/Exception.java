class Exception{
    public static void main(String[]args){
        try {
            int a=5;
            int b= 4;
            int c =a/b;
            System.out.println("Result :" +c);
             
        } catch (ArithmeticException e) {                              //Arithmetic exception
            System.out.println("Can't divide a number by zero");
        }

        try {
            int arr[]=null;
            System.out.println(arr);
        }
        catch(NullPointerException e){                            //Nullpoint exception
            System.out.println("Null Error occured");
        }

        finally{
            System.out.println("Finished the try catch");     //finally used to execute the code regardless of try catch
        }
    }
}