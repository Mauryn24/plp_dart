// Task 1: Function to add two numbers
double addTwo(double num1, double num2) {
  return num1 + num2;
}

// Task 2: Function to subtract two numbers
double subtractTwo(double num1, double num2) {
  return num1 - num2;
}

// Task 3: Function to multiply two numbers
double multiplyTwo(double num1, double num2) {
  return num1 * num2;
}

// Task 4: Function to divide two numbers
double divideTwo(double num1, double num2) {
  if (num2 != 0) {
    return num1 / num2;
  } else {
    print("Error: Division by zero!");
    return double.nan; // Returning NaN (Not a Number) for division by zero
  }
}

// Task 5: Function to get the length of a string
int stringLength(String str) {
  return str.length;
}

// Task 6: Function to get the first element of a list
dynamic getFirstElement(List list) {
  if (list.isNotEmpty) {
    return list[0];
  } else {
    print("Error: List is empty!");
    return null;
  }
}

void main() {
  // Testing the functions
  print("Task 1: Add two numbers - Result: ${addTwo(10, 5)}");
  print("Task 2: Subtract two numbers - Result: ${subtractTwo(10, 5)}");
  print("Task 3: Multiply two numbers - Result: ${multiplyTwo(10, 5)}");
  print("Task 4: Divide two numbers - Result: ${divideTwo(10, 5)}");
  print("Task 5: String length - Result: ${stringLength("Hello, World!")}");
  print("Task 6: First element of a list - Result: ${getFirstElement([1, 2, 3, 4, 5])}");
}
