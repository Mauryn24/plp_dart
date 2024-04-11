// Entry point of the program
void main() {
  try {
    // Attempt to perform a division by zero, which will throw an exception
    int result = 10 ~/ 0;
    // Print the result if no exception occurs (which won't happen in this case)
    print('Result: $result');
  } catch (e) {
    // Catch the exception and print an error message
    print('Error: ${e.toString()}');
  }
}
