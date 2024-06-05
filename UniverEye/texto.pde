class texto{
  int psx;
  int psy;
  int tmx;
  int tmy;
  int txtSz;
  String msg; 
  boolean est;
  texto (int x, int y, int tx, int ty, String ms, int sz){
    psx = x;
    psy = y;
    tmx = tx;
    tmy = ty;
    msg = ms;
    txtSz = sz;
    est = false;
  }
  void escribirTxtBtn(){
    if (est == true){
      textSize(txtSz);
      fill(0);
      text(msg,psx,psy,tmx,tmy);
    }
    else{
      textSize(txtSz);
      fill(255);
      text(msg,psx,psy,tmx,tmy);      
    }
  }
  void escribirTxt(color x){
     textSize(txtSz);
     fill(x);
     text(msg,psx,psy,tmx,tmy);        
  }
  
  void estTxt(boolean et){
      est = et;
  }
}
