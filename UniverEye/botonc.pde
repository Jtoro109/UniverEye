class botonc{
  int psx;
  int psy;
  int radius;
  boolean est = false;
  botonc(int px, int py, int rad){
    psx = px;
    psy = py;
    radius = rad;
  }
  void dibBtnC(){
    noStroke();
    if (est == true){
      circle(psx,psy,radius);
    }
    else {
      circle(psx,psy,radius);
    }
  }
  boolean clickedBtC(int x,int y){
    float d=dist(x,y,psx,psy);
    if (d < (radius/2)){
      est = true;
    }
    else{
      est = false; 
    }
    return (est);
  }
}
