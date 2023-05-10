class Animal{
    public void makesound(){
        System.out.println("Animal makes sounds");
    }
}

class Dog extends Animal{
    public void makesound(){
        System.out.println("dog is barking");
    }
}

class Cat extends Animal{
    public void makesound(){
        System.out.println("meoww meoww");
    }
}

public class Overide {
    public static void main(String[] args) {
      Animal animal = new Animal();
      Dog dog = new Dog();
      Cat cat= new Cat();
  
      animal.makesound(); 
      dog.makesound(); 
      cat.makesound();

    }
  }