class Employee {
  String name;
  double salary;

  // Base class constructor
  Employee(this.name, this.salary);
}

// Manager subclass inheriting from Employee
class Manager extends Employee {
  String department;

  // Subclass constructor calling the parent constructor using `super`
  Manager(String name, double salary, this.department) : super(name, salary);

  // Method to display Manager's information
  void displayDetails() {
    print("Role: Manager");
    print("Name: $name, Salary: ৳$salary, Department: $department");
  }
}

// Developer subclass inheriting from Employee
class Developer extends Employee {
  String programmingLanguage;

  // Subclass constructor
  Developer(String name, double salary, this.programmingLanguage) : super(name, salary);

  // Method to display Developer's information
  void displayDetails() {
    print("Role: Developer");
    print("Name: $name, Salary: ৳$salary, Language: $programmingLanguage");
  }
}

void solveProblem2() {
  print("\n--- Problem 2: Employee Hierarchy ---");
  // Create a Manager object
  Manager manager = Manager("Anisul Islam", 85000.0, "Human Resources");

  // Create a Developer object
  Developer developer = Developer("Nafisa Khan", 70000.0, "Dart & Flutter");

  // Display their details
  manager.displayDetails();
  developer.displayDetails();
}