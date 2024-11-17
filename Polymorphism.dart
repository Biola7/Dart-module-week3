// Superclass
class Shape {
  // Method to be overridden
  double calculateArea() {
    print('Area calculation is not defined for generic shapes.');
    return 0.0;
  }
}

// Subclass 1: Circle
class Circle extends Shape {
  double radius;

  // Constructor
  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius; // πr²
  }
}

// Subclass 2: Rectangle
class Rectangle extends Shape {
  double length;
  double width;

  // Constructor
  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width; // length × width
  }
}

// Subclass 3: Triangle
class Triangle extends Shape {
  double base;
  double height;

  // Constructor
  Triangle(this.base, this.height);

  @override
  double calculateArea() {
    return 0.5 * base * height; // ½ × base × height
  }
}

void main() {
  // Create instances of each shape
  Shape myCircle = Circle(5.0); // Radius = 5
  Shape myRectangle = Rectangle(4.0, 6.0); // Length = 4, Width = 6
  Shape myTriangle = Triangle(4.0, 3.0); // Base = 4, Height = 3

  // Call the overridden calculateArea method for each shape
  print('Circle Area: ${myCircle.calculateArea()}');
  print('Rectangle Area: ${myRectangle.calculateArea()}');
  print('Triangle Area: ${myTriangle.calculateArea()}');
}
