void drawBoard() {
  stroke(0);
  strokeWeight(3);

  line(166, 0, 166, 500);
  line(332, 0, 332, 500);

  line(0, 166, 500, 166);
  line(0, 332, 500, 332);
}

void drawO(int boardIndex){
  int row = boardIndex / 3;
  int col = boardIndex % 3;

  float xCord = col * cellSize + cellSize/2;
  float yCord = row * cellSize + cellSize/2;

  stroke(0);
  strokeWeight(3);
  circle(xCord, yCord, 166);
}

void drawX(int boardIndex){
  int row = boardIndex / 3;
  int col = boardIndex % 3;

  float xCord = col * cellSize;
  float yCord = row * cellSize;

  stroke(0);
  strokeWeight(3);
  line(xCord, yCord, xCord + 166, yCord + 166);
  line(xCord + 166, yCord, xCord, yCord + 166);
}
void drawMarks() {
  for (int i = 0; i < 9; i++) {
    if (board[i] == xMark) {
      drawX(i);
    } else if (board[i] == oMark) {
      drawO(i);
    }
  }
}
