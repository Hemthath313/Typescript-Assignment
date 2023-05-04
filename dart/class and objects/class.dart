class Animal {           
  String? name; // ? it is null safety
  int? age;

  void display() {    //method
    print("animal name is $name");
    print("animal age is age is $age");
  }
}



class student {  //class created
  String? name;
  int? age;
  int? rollnumber;

  student(String name, int age, int rollnumber) {   //constructor
    print("constuctor called");
    this.name = name; 
    this.age = age;   // this is used to initialize the current class properties
    this.rollnumber = rollnumber;
  }
  
  void display() {                             //method
    print("The student name id ${this.name}");
    print("The student age is ${this.age}");
    print("student rollno is ${this.rollnumber}");
  }
}



void main() {
  Animal animal = Animal();  
  animal.name = "lion";    //without constructor
  animal.age = 5;
  animal.display();

  student Student = student("Hemthath", 22, 15); //with constructor
  Student.display();
}
