// Entry point of the program
void main() {
  // Define a string variable 'fruit' and assign the value 'apple' to it
  String fruit = 'apple';
  // Use a switch statement to check the value of 'fruit'
  switch (fruit) {
    // If 'fruit' is 'apple', print 'It is an apple.'
    case 'apple':
      print('It is an apple.');
      break;
    // If 'fruit' is 'banana', print 'It is a banana.'
    case 'banana':
      print('It is a banana.');
      break;
    // If 'fruit' is neither 'apple' nor 'banana', print 'Unknown fruit.'
    default:
      print('Unknown fruit.');
  }
}
