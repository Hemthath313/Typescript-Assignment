 class Employee {
    private String name;       //private can access within the class
    public int age;           //it can be access from the anywhere
    protected double salary;   //it can be access with subclass and  the  same packages
    
    public Employee(String name, int age, double salary) {
        this.name = name;                                     //constructor
        this.age = age;
        this.salary = salary;
    }
    
    public void printDetails() {                 //method
        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
        System.out.println("Salary: " + salary);
    }
}
public class Access {
    public static void main(String[] args) {
        Employee emp = new Employee("John", 30, 50000.0);
        emp.printDetails();
    }
}
