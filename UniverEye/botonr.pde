class botonr{
  int psx;
  int psy;
  int tmx;
  int tmy;
  int bord;
  boolean est = false;
  botonr(int px, int py, int tx, int ty, int bd){
    psx = px;
    psy = py;
    tmx = tx;
    tmy = ty;
    bord = bd;
  }
  void dibBtnR(){
    noStroke();
    if (est == true){
      fill (255);
      rect (psx,psy,tmx,tmy,bord);
    }
    else {
      fill (50);
      rect (psx,psy,tmx,tmy,bord);
    }
  }
  void dibBtnRN(){
    noStroke();
    fill (50);
    rect (psx,psy,tmx,tmy,bord);
  }  
  boolean clickedBtR(int x,int y){
    if ((x > psx) && (y > psy) && (x < psx+tmx) && y < (psy+tmy) && (est == true)){
      est = false;
    }
    else if((x > psx) && (y > psy) && (x < psx+tmx) && y < (psy+tmy) && (est == false)) {
      est = true;
    }
    return (est);
  }
  boolean clickedBtRN(int x,int y){
    est=false;
    if ((x > psx) && (y > psy) && (x < psx+tmx) && y < (psy+tmy)){
      est = true;
    }
    return (est);
  }  
}
