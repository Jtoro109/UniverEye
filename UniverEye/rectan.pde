class rectan{
  int psx;
  int psy;
  int tmx;
  int tmy;
  color colour = color(0,0,0,0);
  int gros;
  int brd;
  boolean est;
  rectan (int x,int y, int tx, int ty, color col, int gr, int bd){
    est = false;
    psx = x;
    psy = y;
    tmx = tx;
    tmy = ty;
    colour = col;
    gros = gr;
    brd = bd;
  }
  void dibRect(){
    if (est == true){
      stroke(colour);
      strokeWeight(gros);
      fill(colour);
      rect(psx,psy,tmx,tmy,brd);
    }
  }
  void dibRectN(){
      stroke(colour);
      strokeWeight(gros);
      fill(colour);
      rect(psx,psy,tmx,tmy,brd);
  }
  void estR(boolean et){
    est = et;
  }
}
