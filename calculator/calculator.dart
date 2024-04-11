import 'dart:io'; // Importing 'dart:io' library to use stdin for user input

// Define a class named Calculator to encapsulate calculator functionality
class Calculator {
  // Constructor for the Calculator class
  Calculator();

  // Function to add two numbers
  double add(double num1, double num2) {
    return num1 + num2;
  }

  // Function to subtract two numbers
  double subtract(double num1, double num2) {
    return num1 - num2;
  }

  // Function to multiply two numbers
  double multiply(double num1, double num2) {
    return num1 * num2;
  }

  // Function to divide two numbers
  double divide(double num1, double num2) {
    return num1 / num2;
  }
}

// Entry point of the program
void main() {
  // Create an instance of the Calculator class
  var calculator = Calculator();

  // Prompt the user to enter two numbers
  stdout.write('Enter first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  // Perform basic mathematical operations
  print('Choose operation:');
  print('1. Add');
  print('2. Subtract');
  print('3. Multiply');
  print('4. Divide');
  stdout.write('Enter your choice: ');

  int choice = int.parse(stdin.readLineSync()!);

  double result = 0;

  // Use a switch statement to perform the selected operation
  switch (choice) {
    case 1:
      result = calculator.add(num1, num2);
      break;
    case 2:
      result = calculator.subtract(num1, num2);
      break;
    case 3:
      result = calculator.multiply(num1, num2);
      break;
    case 4:
      result = calculator.divide(num1, num2);
      break;
    default:
      print('Invalid choice');
  }

  // Display the result
  print('Result: $result');
}
