public void computerMove(){
  boolean validMove = false;
  int move;
  do{
    move = int(random(9));
    validMove = validateMove(move);
  }
  while(!validMove);

  updateBoard(move);
  computerCross(move);
  computerTurn = false;
  ++turns;
}

public void playerMove(int move){
  int convertedMove = asciiToInt(move);
  
  if(validateMove(convertedMove) && !computerTurn){
    playerCircle(convertedMove);
    updateBoard(convertedMove);
    computerTurn = true;
    ++turns;
  }
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
      boardPlacement[2][1] = updateValue;

      break;

    case 8:
      boardPlacement[2][2] = updateValue;

      break;

    default:
      println("Outside of the scope");
  }
}

public void checkWin(){
  int column, row, diagonal;
  //columns
  for(int i = 0; i < 3; ++i){
    column = boardPlacement[0][i] * 2 + boardPlacement[1][i] * 9 + boardPlacement[2][i] * 4;
    if(column == 15 || column == 30){
      gameWin = true;
      
      return;
    }
  }
  //rows
  for(int i = 0; i < 3; ++i){
    row = boardPlacement[i][0] * 2 + boardPlacement[i][1] * 7 + boardPlacement[i][2] * 6;
    if(row == 15 || row == 30){
      gameWin = true;
      
      return;
    }
  }
  
  diagonal = boardPlacement[0][2] * 6 + boardPlacement[1][1] * 5 + boardPlacement[2][0] * 4;
  if(diagonal == 15 || diagonal == 30){
    gameWin = true;
    
    return;
  }
  
  diagonal = boardPlacement[0][0] * 2 + boardPlacement[1][1] * 5 + boardPlacement[2][2] * 8;
  if(diagonal == 15 || diagonal == 30){
    gameWin = true;
    
    return;
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
      println("Not a move");
  }
}
private int asciiToInt(int ascii){
  int converted = ascii;
  switch(ascii){
    case 48:
      converted = 0;
      
      break;
    
    case 49:
      converted = 1;
      
      break;
    
    case 50:
      converted = 2;
      
      break;
    
    case 51:
      converted = 3;
      
      break;
    
    case 52:
      converted = 4;
      
      break;
    
    case 53:
      converted = 5;
      
      break;
    
    case 54:
      converted = 6;
      
      break;
    
    case 55:
      converted = 7;
      
      break;
    
    case 56:
      converted = 8;
      
      break;
    
    default:
      println("Outside the Ascii scope");
      
      return -1;
  }
  
  return converted;
}
