void handleKeyPress(char pressedKey) {
  if (pressedKey >= '0' && pressedKey <= '8') {
    int cellIndex = pressedKey - '0';

    println("You pressed: " + pressedKey);
    println("That's cell: " + cellIndex);

    if (board[cellIndex] == emptySquare) {
      board[cellIndex] = oMark;  // User plays O
      println("Placed O in cell " + cellIndex);

      computerMove();
    } else {
      println("That cell is already taken!");
    }
  } else {
    println("Invalid key! Please press 0-8");
  }
}

void computerFirstMove(){
  int randomFirstCell = (int)random(9);
  board[randomFirstCell] = xMark;
}

void computerMove() {
  while (true) {
    int randomCell = (int)random(9);

    if (board[randomCell] == emptySquare) {
      board[randomCell] = xMark;
      println("Computer plays X in cell " + randomCell);
      return;
    }
  }
}
