 int[] board = new int [9];
 int gameState;

void setup() {
  size(500, 500);
  
  gameState = PLAYING;

  for(int i = 0; i < 9; i++){
    board[i] = emptySquare;
}
  println("Game has started");
  println("Board all empty");
  computerFirstMove();

}

void draw() {
  background(255,255, 255);
  drawBoard();
  drawMarks();
}

void keyPressed() {
  handleKeyPress(key);
}
