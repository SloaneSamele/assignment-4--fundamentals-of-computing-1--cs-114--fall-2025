public void board(){
  stroke(#1F0603);
  //Vetical 
  line(300, 100, 300, 400);
  line(200, 100, 200, 400);
    
  //Horizontial 
  line(100, 200, 400, 200);
  line(100, 300, 400, 300);
}

public void circle(int x, int y){
 fill(#AD0013);
 noStroke();
 circle(x, y, 70); 
}

public void cross(int x1, int y1, int x2 , int y2){
  stroke(#3F4144);
  line(x1, y1, x2, y2);
  line(x1, y2, x2, y1);
}
