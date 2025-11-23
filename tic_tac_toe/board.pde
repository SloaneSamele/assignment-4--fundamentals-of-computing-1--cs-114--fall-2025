public void computerMove(){
  boolean validMove = false;
  int move;
  do{
    move = int(random(9));
    validMove = validateMove(move);
  }
  while(!validMove);
  
  computerTurn = false;
  computerCross(move);
}

public void playerMove(int move){
  validateMove(move);
  computerTurn = true;
  playerCircle(move);
}

private boolean validateMove(int move){
  boolean validMove = false;
  
  for(int i = 0; i < positions.size(); ++i){
    if(move == positions.get(i)){
      positions.remove(i);
      validMove = true;   
      
      break;
    }
  }
  
  return validMove;
}

private void updateBoard(int move){
  int updateValue = 1;
  
  if(!computerTurn){
    updateValue = 2;
  }
  
  switch(move){
    case 0:
      boardPlacement[0][0] = updateValue;
      
      break;
      
    case 1:
      boardPlacement[0][1] = updateValue;
      
      break;
      
    case 2:
      boardPlacement[0][2] = updateValue;
      
      break;
      
    case 3:
      boardPlacement[1][0] = updateValue;
      
      break;
    
    case 4:
      boardPlacement[1][1] = updateValue;
      
      break;     
    case 5:
      boardPlacement[1][2] = updateValue;
      
      break;
    case 6:
      boardPlacement[2][0] = updateValue;
      
      break;
    case 7:
      boardPlacement[1][0] = updateValue;
      
      break;
    case 8:
      boardPlacement[1][0] = updateValue;
      
      break;
    default:
      print("Outside of the scope");
  }
}
      
private void computerCross(int position){
  switch(position){
    case 0:
      cross(CROSSX1, CROSSY1, CROSSX2, CROSSY2);
      
      break;
      
    case 1:
      cross(CROSSX1 + 100, CROSSY1, CROSSX2 + 100, CROSSY2);
      
      break;
      
    case 2:
      cross(CROSSX1 + 200, CROSSY1, CROSSX2 + 200, CROSSY2);
      
      break;
      
    case 3:
      cross(CROSSX1, CROSSY1 + 100, CROSSX2, CROSSY2 + 100);
      
      break;
      
    case 4:
      cross(CROSSX1 + 100, CROSSY1 + 100, CROSSX2 + 100, CROSSY2 + 100);
      
      break;
      
    case 5:
      cross(CROSSX1 + 200, CROSSY1 + 100, CROSSX2 + 200, CROSSY2 + 100);
      
      break;
      
    case 6:
      cross(CROSSX1, CROSSY1 + 200, CROSSX2, CROSSY2 + 200);
      
      break;
      
    case 7:
      cross(CROSSX1 + 100, CROSSY1 + 200, CROSSX2 + 100, CROSSY2 + 200);
      
      break;
      
    case 8:
      cross(CROSSX1 + 200, CROSSY1 + 200, CROSSX2 + 200, CROSSY2 + 200);
      
      break;
      
    default: 
      print("Not a move");
  }
}

private void playerCircle(int position){
  switch(position){
    case 0:
      circle(CIRCLEX, CIRCLEY);
      
      break;
      
    case 1:
      circle(CIRCLEX + 100, CIRCLEY);
      
      break;
      
    case 2:
      circle(CIRCLEX + 200, CIRCLEY);
      
      break;
      
    case 3:
      circle(CIRCLEX, CIRCLEY + 100);
      
      break;
      
    case 4:
      circle(CIRCLEX + 100, CIRCLEY + 100);
      
      break;
      
    case 5:
      circle(CIRCLEX + 200, CIRCLEY + 100);
      
      break;
      
    case 6:
      circle(CIRCLEX, CIRCLEY + 200);
      
      break;
      
    case 7:
      circle(CIRCLEX + 100, CIRCLEY + 200);
      
      break;
      
    case 8:
      circle(CIRCLEX + 200, CIRCLEY + 200);
      
      break;
      
    default: 
      print("Not a move");
  }
}
