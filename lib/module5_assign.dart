class Book {
  String title;
  String author;
  double price;

  // Constructor to initialize the properties
  Book(this.title, this.author, this.price);

  // Method to calculate and return the price after a discount
  double discountedPrice(double discountPercent) {
    double discountAmount = price * (discountPercent / 100);
    return price - discountAmount;
  }
}

void solveProblem1() {
  print("--- Problem 1: Book Class ---");
  // Create two book objects
  Book book1 = Book("The Alchemist", "Paulo Coelho", 550.0);
  Book book2 = Book("Sapiens", "Yuval Noah Harari", 800.0);

  // Print details for Book 1
  print("Book 1 Details: ${book1.title} by ${book1.author}, Price: ৳${book1.price}");
  double discountedPrice1 = book1.discountedPrice(10); // 10% discount
  print("Price after 10% discount: ৳${discountedPrice1.toStringAsFixed(2)}\n");

  // Print details for Book 2
  print("Book 2 Details: ${book2.title} by ${book2.author}, Price: ৳${book2.price}");
  double discountedPrice2 = book2.discountedPrice(15); // 15% discount
  print("Price after 15% discount: ৳${discountedPrice2.toStringAsFixed(2)}");
}
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
// Abstract class serving as a blueprint
abstract class Appliance {
  void turnOn();
  void turnOff();
}

// Fan class implementing the Appliance blueprint
class Fan extends Appliance {
  @override
  void turnOn() {
    print("Fan is now running. 💨");
  }

  @override
  void turnOff() {
    print("Fan has stopped.");
  }
}

// Light class also implementing the Appliance blueprint
class Light extends Appliance {
  @override
  void turnOn() {
    print("Light is switched on. 💡");
  }

  @override
  void turnOff() {
    print("Light is switched off.");
  }
}

void solveProblem3() {
  print("\n--- Problem 3: Appliance Abstraction ---");
  // Create objects of the subclasses
  Fan myFan = Fan();
  Light myLight = Light();

  // Call methods for the Fan
  myFan.turnOn();
  myFan.turnOff();

  // Call methods for the Light
  myLight.turnOn();
  myLight.turnOff();
}

// Main function to run all solutions
void main() {
  solveProblem1();
  solveProblem2();
  solveProblem3();
}