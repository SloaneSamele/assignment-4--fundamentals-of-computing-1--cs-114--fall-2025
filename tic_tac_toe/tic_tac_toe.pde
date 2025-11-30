void setup(){
  size(500, 500);
  background(240, 232, 218);
  strokeWeight(9);
  pixelDensity(1);
  
  board();

  for(int i = 0; i < 9; ++i){
    positions.append(i);
  }
  computerMove();
}

void draw(){
  checkWin();
  if(gameWin){
    println("Game over");
    return;
  }
  if(computerTurn){
    computerMove();
  }
}

void keyPressed(){
  if(key  >= '0' && key < '9'){
    playerMove(key);
    return;
  }
  else{
    println("Invalid key");
  }
}
