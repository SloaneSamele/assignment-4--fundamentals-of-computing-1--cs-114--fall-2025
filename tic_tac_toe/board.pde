public void computerMove(){
  boolean validMove = false;
  int move;
  
  do{
    move = int(random(9));
    validateMove(move);
  }
  while(!validMove);
  
  computerCross(move);
  computerTurn = false;
}

public void playerMove(){
  computerTurn = true;
}

private boolean validateMove(int move){
  boolean validMove = false;
  
  for(int i = 0; i < positions.size(); ++i){
    if(move == positions.get(i)){
      positions.remove(i);
      validMove = true;
    }
  }
  
  return validMove;
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
      cross(CROSSX1, CROSSY1 + 200, CROSSX2 + 200, CROSSY2);
      
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
public void doSomething(){
  cross(CROSSX1, CROSSY1, CROSSX2, CROSSY2);
}
