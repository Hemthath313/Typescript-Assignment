public class Controlflow {
    public static void main(String[] args) {
        if (20 > 18) {
          System.out.println("20 is greater than 18"); 
        }  
        
        int time = 22;
    if (time < 10) {
      System.out.println("Good morning.");
    } else if (time < 18) {                      //if statements
      System.out.println("Good day.");
    }  else {
      System.out.println("Good evening.");
    }
    
    int i = 0;
    while (i < 5) {                 // while loops
      System.out.println(i);
      i++;
    }  


    for (int j = 0; j < 5; j++) {   // for loops
      System.out.println(j);
    }  


    String[] cars = {"Volvo", "BMW", "Ford", "Mazda"}; //foreachloop iterate through  arrays
    for (String k : cars) {
     System.out.println(k);
    }

    for (int b = 0; b < 10; b++) {
      if (b == 4) {
        break;                       //break statement used to break from the current iteration.
      }
      System.out.println(b);
    }  

    
    for (int c = 0; c < 10; c++) {   //continue is used to skip the current iteration and jump to the next iteration
      if (c == 4) {
        continue;                       
      }
      System.out.println(c);
    }  
  }
}     

