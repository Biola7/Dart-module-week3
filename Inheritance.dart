// Superclass
class Vehicle {
  String brand;
  int year;

  // Constructor
  Vehicle(this.brand, this.year);

  // Method to display vehicle details
  void displayDetails() {
    print('Brand: $brand');
    print('Year: $year');
  }
}

// Subclass
class Car extends Vehicle {
  String model;
  int numberOfDoors;

  // Constructor
  Car(String brand, int year, this.model, this.numberOfDoors) : super(brand, year);

  // Method specific to Car class
  void displayCarDetails() {
    // Call superclass method
    super.displayDetails();
    print('Model: $model');
    print('Number of Doors: $numberOfDoors');
  }
}

void main() {
  // Create an instance of Car
  var myCar = Car('Toyota', 2022, 'Corolla', 4);

  // Call method from subclass
  myCar.displayCarDetails();
}
