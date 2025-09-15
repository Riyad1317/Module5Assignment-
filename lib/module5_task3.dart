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
  solveProblem3();
}