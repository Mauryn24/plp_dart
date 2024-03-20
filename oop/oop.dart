import 'dart:io';

// Interface
abstract class Drawable {
  void draw();
}

// Superclass
class Shape {
  void calculateArea() {
    print('Calculating area of shape');
  }
}

// Subclass implementing interface
class Circle extends Shape implements Drawable {
  double radius; // Adding radius property

  Circle(this.radius); // Constructor to initialize radius

  @override
  void calculateArea() {
    print('Calculating area of circle');
  }

  @override
  void draw() {
    print('Drawing circle with radius: $radius');
  }
}

// Method to read data from file and initialize class instance
Circle createCircleFromFile(String fileName) {
  final file = File('oop/$fileName');
  final lines = file.readAsLinesSync();
  final radius = double.parse(lines[0]);
  return Circle(radius);
}

// Method demonstrating loop usage
void drawAll(List<Drawable> shapes) {
  for (var shape in shapes) {
    shape.draw();
  }
}

void main() {
  // Create circle from file
  final circle = createCircleFromFile('circle_data.txt');

  // Demonstrate overriding method
  circle.calculateArea(); // Output: Calculating area of circle

  // Demonstrate loop usage
  final shapes = [circle];
  drawAll(shapes); // Output: Drawing circle
}
