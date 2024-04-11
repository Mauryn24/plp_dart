import 'dart:io';

// Define a class for the Tic Tac Toe game
class TicTacToe {
  List<String> board = List.filled(9, ''); // Initialize the game board
  String currentPlayer = 'X'; // Initialize the current player

  // Function to display the game board
  void displayBoard() {
    for (int i = 0; i < 9; i += 3) {
      print('${board[i]} | ${board[i + 1]} | ${board[i + 2]}');
      if (i < 6) {
        print('---------');
      }
    }
  }

  // Function to check if a player has won
  bool checkWinner(String player) {
    // Define the winning combinations
    List<List<int>> winningCombinations = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8], // Rows
      [0, 3, 6], [1, 4, 7], [2, 5, 8], // Columns
      [0, 4, 8], [2, 4, 6] // Diagonals
    ];

    // Check if any winning combination matches the player's moves
    for (var combination in winningCombinations) {
      if (board[combination[0]] == player &&
          board[combination[1]] == player &&
          board[combination[2]] == player) {
        return true; // Player has won
      }
    }
    return false; // No winner yet
  }

  // Function to check if the game is a draw
  bool checkDraw() {
    return board.every((cell) => cell != ''); // All cells are filled
  }

  // Function to switch players
  void switchPlayer() {
    currentPlayer = (currentPlayer == 'X') ? 'O' : 'X';
  }

  // Function to start and play the game
  void playGame() {
    print('Welcome to Tic Tac Toe!\n');
    displayBoard(); // Display the initial game board

    // Game loop
    while (true) {
      print('\n$currentPlayer\'s turn. Enter your move (1-9):');
      int move = int.parse(stdin.readLineSync()!) - 1;

      // Check if the move is valid
      if (move >= 0 && move < 9 && board[move] == '') {
        board[move] = currentPlayer; // Place the player's symbol on the board
        displayBoard(); // Display the updated game board

        // Check if the current player has won
        if (checkWinner(currentPlayer)) {
          print('\nCongratulations! $currentPlayer wins!');
          break; // End the game
        }

        // Check if the game is a draw
        if (checkDraw()) {
          print('\nThe game is a draw!');
          break; // End the game
        }

        switchPlayer(); // Switch to the next player
      } else {
        print('\nInvalid move. Please enter a number between 1 and 9.');
      }
    }
  }
}

// Entry point of the program
void main() {
  TicTacToe game = TicTacToe(); // Create a new instance of the Tic Tac Toe game
  game.playGame(); // Start the game
}
