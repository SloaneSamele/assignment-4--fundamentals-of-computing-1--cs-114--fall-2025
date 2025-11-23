public void computerMove(){
  boolean validMove = false;
  int move;
  
  do{
    move = int(random(9));
    validateMove(move);
  }
  while(!validMove);
  
  computerCross(move);
  updateBoard(move);
  computerTurn = false;
  ++turns;
}

public void playerMove(){
  computerTurn = true;
  ++turns;
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

public void updateBoard(int move){
  int updateValue = 1;
  if(!computerTurn){
    updateValue = 2;
  }
  
  switch(move){
    case 0:
      board[0][0] = updateValue;
      
      break;
    case 1:
      board[0][1] = updateValue;
      
      break;
    
    case 2:
      board[0][2] = updateValue;
      
      break;
          
    case 3:
      board[1][0] = updateValue;
      
      break;
    
    case 4:
      board[1][1] = updateValue;
      
      break;
    
    case 5:
      board[1][2] = updateValue;
      
      break;
    
    case 6:
      board[2][0] = updateValue;
      
      break;
    case 7:
      board[2][1] = updateValue;
      
      break;
    case 8:
      board[2][2] = updateValue;
      
      break;
      
     default:
       print("Outside of the scope of the game");
    }
}
  
public void checkWin(){
  int column, row, diagonal;
  //colomn check
  for(int i = 0; i < 3; ++i){
    column = board[0][i] * 2 + board[1][i] * 9 + board[2][i] * 4;
    
    if(column == 15 || column == 30){
      gameWin = true;
    }
  }
  
  //Row check
  for(int i = 0; i < 3; ++i){
    row = board[i][0] * 9 + board[i][1] * 5 + board[i][2] * 1;
    
    if(row == 15 || row == 30){
      gameWin = true;
    }
  }
  
  diagonal = board[0][2] * 6 + board[1][1] * 5 + board[2][0] * 4;
  //Diagonal Checks
  if(diagonal == 15 || diagonal == 30){
    gameWin = true;
  }
  diagonal = board[0][0] * 2 + board[1][1] * 5 + board[2][2] * 8;
  if(diagonal == 15 || diagonal == 30){
    gameWin = true;
  }
}
