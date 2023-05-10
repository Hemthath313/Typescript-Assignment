public class Car {     //class
    String model;
    int year;
    int mileage;

    // Constructor

    public Car( String model, int year, int mileage) {                
        this.model = model;
        this.year = year;
        this.mileage = mileage;
    }
    // Method

    public void display() {
       System.out.println("The car model is "+this.model);
       System.out.println("year of manufacture is "+this.year);
       System.out.println("The mileage of the car is"+this.mileage);
    }

    public static void main(String[] args) {
        Car myCar = new Car("toyoto",2014,28);
        myCar.display();
    }
    
}