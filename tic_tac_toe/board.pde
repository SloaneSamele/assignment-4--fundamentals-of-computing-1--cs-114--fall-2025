void handleKeyPress(char pressedKey) {
  if (gameState != PLAYING) {
    println("Game has ended! Refresh to play again.");
    return;
  }
    if (pressedKey >= '0' && pressedKey <= '8') {
      int cellIndex = pressedKey - '0';
  
      println("You pressed: " + pressedKey);
  
      if (board[cellIndex] == emptySquare) {
        board[cellIndex] = oMark;
        println("Placed O in cell " + cellIndex);
        
        int winner = checkWinner();
        if (winner == oMark) {
          println("YOU WIN! Congratulations!");
          gameState = USER_WIN;
          return;
        }
        
        if (isBoardFull()) { 
          println("It's a TIE! No one wins.");
          gameState = TIE; 
          return;
        }
        computerMove();
  
        winner = checkWinner();
        if (winner == xMark) {
          println("COMPUTER WINS! Better luck next time.");
          gameState = COMPUTER_WIN;
          return;
        }
        if(isBoardFull()) {
          println("Game is tied, nobody wins");
          gameState = TIE;
          return;
        }
        println("Game is still playing");
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

int checkWinner() {
  if (board[0] == board[1] && board[1] == board[2] && board[0] != emptySquare) {
    return board[0];
  }

  if (board[3] == board[4] && board[4] == board[5] && board[3] != emptySquare) {
    return board[3];
  }

  if (board[6] == board[7] && board[7] == board[8] && board[6] != emptySquare) {
    return board[6];
  }

  if (board[0] == board[3] && board[3] == board[6] && board[0] != emptySquare) {
    return board[0];
  }

  if (board[1] == board[4] && board[4] == board[7] && board[1] != emptySquare) {
    return board[1];
  }

  if (board[2] == board[5] && board[5] == board[8] && board[2] != emptySquare) {
    return board[2];
  }

  if (board[0] == board[4] && board[4] == board[8] && board[0] != emptySquare) {
    return board[0];
  }

  if (board[2] == board[4] && board[4] == board[6] && board[2] != emptySquare) {
    return board[2];
  }

  return 0;
}

boolean isBoardFull() {
  for (int i = 0; i < 9; i++) {
    if (board[i] == emptySquare) {
      return false;
    }
  }
  return true;
}
