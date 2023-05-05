public class constructor {
    int empid;
     String name;
     int age;

    // Default constructor without parameters
    public constructor() {
        empid = 15;
        name ="hemthath";
        age = 22;
    }
    

    public static void main(String[] args) {
        constructor myObj = new constructor();
        System.out.println("The employee id :"+ myObj.empid);
        System.out.println("The employe  name is : " + myObj.name);
        System.out.println("The employe age is: " + myObj.age);
    }
}
