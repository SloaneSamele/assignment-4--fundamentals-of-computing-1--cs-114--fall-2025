void handleKeyPress(char pressedKey) {
  if (pressedKey >= '0' && pressedKey <= '8') {
    int cellIndex = pressedKey - '0';
    
    println("You pressed: " + pressedKey);
    println("That's cell: " + cellIndex);
    
    // Check if that cell is empty
    if (board[cellIndex] == emptySquare) {
      board[cellIndex] = oMark;  // User plays O
      println("Placed O in cell " + cellIndex);
    } else {
      println("That cell is already taken!");
    }
  } else {
    println("Invalid key! Please press 0-8");
  }
}
