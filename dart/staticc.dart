class Employee {
  static var emp_dept;
  var emp_name;
  int? emp_salary;
 
  showDetails() {
    print("Name of the Employee is: ${emp_name}");
    print("Salary of the Employee is: ${emp_salary}");
    print("Dept. of the Employee is: ${emp_dept}");
  }
}
 
void main() {
  Employee e1 = Employee();
  Employee e2 = Employee();
  Employee.emp_dept = "cs";  //set cs dept static for both the employees.
 
  print("GeeksforGeeks Dart static Keyword Example");
  e1.emp_name = 'Hemthath';
  e1.emp_salary = 50000;
  e1.showDetails();
 
  e2.emp_name = 'Thanu';
  e2.emp_salary = 80000;
  e2.showDetails();
}