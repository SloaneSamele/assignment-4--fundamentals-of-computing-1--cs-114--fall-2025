 int[] board = new int [9]; //<>// //<>// //<>//

void setup() {
  size(500, 500);

  for(int i = 0; i < 9; i++){
    board[i] = emptySquare;
}
  println("Game has started");
  println("Board all empty");
}

void draw() {
  background(255,255, 255);
  drawBoard();
  drawMarks();
}

void keyPressed() {
  handleKeyPress(key);
}
