class ellipsec{
  float posX;
  float posY;
  float diameterX;
  float diameterY;
  color colourF = color(0,0,0,0); 
  color colourS = color(0,0,0,0);
  float strk;
  ellipsec(float x, float y, float dmtX, float dmtY,  color col, color colo, float str){
    posX = x;
    posY = y;
    diameterX = dmtX;
    diameterY = dmtY;
    colourF = col;
    colourS = colo;
    strk = str;
  }
  void ellDraw (){
    stroke(colourS);
    fill(colourF);
    strokeWeight(strk);
    ellipse(posX,posY,diameterX,diameterY);
  }
}
