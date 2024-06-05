class cost{
  float psx;
  float psy;
  boolean est;
  boolean estI;
  String nom;
  String des;
  int tmx;
  int tmy;
  cost(float px, float py, String nm, String ds){
    psx = px;
    psy = py;
    nom = nm;
    des = ds;
    tmx = width/18;
    tmy = (23*width)/1920;
  }
  void nomCos(){
    if (est == true){
      if (estI == true)
        fill(#3BD9FF);
      else
        fill(255);
      textFont(fuente);
      textLeading(10);
      textSize((20*width)/1920);
      text(nom,psx,psy,tmx,tmy);
    }
  }
  void desCos(){
    if (est == true && estI == true){
      fill(255);
      textFont(fuente);
      textLeading(10);
      textSize((20*width)/1920);
      text(nom,width-(width/8),height/4,width/9,height/3);
      textSize((14*width)/1920);
      text(des,width-(width/8),(height/4)+((60*height)/1080),width/9,height/3);
    }
  }
  boolean clickedCos(int x,int y){
    if ((x > psx) && (y > psy) && (x < psx+tmx) && y < (psy+tmy)){
      estI = true;
    }
    else{
      estI = false; 
    }
    return(estI);
  }
  void estCos(boolean estad){
    est = estad;
  }
}
