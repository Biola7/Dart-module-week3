// Abstract class
abstract class Shape {
  // Abstract method: must be implemented by subclasses
  double calculateArea();

  // Regular method: optional to override
  void display() {
    print('This is a shape.');
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

  @override
  void display() {
    print('This is a circle with radius $radius.');
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

  @override
  void display() {
    print('This is a rectangle with length $length and width $width.');
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

  @override
  void display() {
    print('This is a triangle with base $base and height $height.');
  }
}

void main() {
  // Create instances of each shape
  Shape circle = Circle(5.0);
  Shape rectangle = Rectangle(4.0, 6.0);
  Shape triangle = Triangle(4.0, 3.0);

  // List of shapes
  List<Shape> shapes = [circle, rectangle, triangle];

  // Iterate through shapes and display their details and areas
  for (var shape in shapes) {
    shape.display();
    print('Area: ${shape.calculateArea()}');
    print('');
  }
}
