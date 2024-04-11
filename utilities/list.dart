// Define a function named 'findLargest' that takes a list of integers as input
int findLargest(List<int> numbers) {
  // Initialize 'largest' with the first element of the list
  int largest = numbers[0];
  // Iterate through the list to find the largest element
  for (int i = 1; i < numbers.length; i++) {
    // If the current element is larger than 'largest', update 'largest'
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  // Return the largest element
  return largest;
}

// Entry point of the program
void main() {
  // Define a list of integers named 'numbers'
  List<int> numbers = [10, 25, 7, 42, 15];
  // Print the largest number in the list by calling the 'findLargest' function
  print('The largest number is: ${findLargest(numbers)}');
}
