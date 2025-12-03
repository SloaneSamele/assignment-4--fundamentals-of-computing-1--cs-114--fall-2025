void setup(){
  size(500, 500);
  background(224, 222, 205);
  strokeWeight(9);
  pixelDensity(1);
  
  board();

  for(int i = 0; i < 9; ++i){
    positions.append(i);
  }
  computerMove();
}

void draw(){
  println("Game on going");
  checkWin();
  
  if(gameWin){
    noLoop();
    if(!computerTurn){
      println("Computer Win");
      
      return;
      
    }
    else{
      println("Player Win");
      
      return;
    }
  }
  
  if(turns == 9){
    noLoop();
    println("Draw");
    
    return;
  }
  
  if(computerTurn){
    computerMove();
  }
}

void keyTyped(){
  if(turns == 9){
    println("Game has ended");
  }
  
  if(key  >= '0' && key < '9'){
    playerMove(key);
    return;
  }
  else{
    println("Invalid key");
  }
}
