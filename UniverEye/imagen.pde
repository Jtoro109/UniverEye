class imagen{
  PImage img;
  int psx;
  int psy;
  int tmx;
  int tmy;
  boolean est;
  imagen (PImage im,int x,int y,int tx, int ty){
    img = im;
    psx = x;
    psy = y;
    tmx = tx;
    tmy = ty;
  }
  void dibImagenEst(){
    if (est == true){
      image(img,psx,psy,tmx,tmy);
    }  
  }
  void dibImagen(){
      image(img,psx,psy,tmx,tmy);
  }
  void estIm(boolean estd){
    est = estd;
  }
  
}
