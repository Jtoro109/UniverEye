class lineacos{
  float px1;
  float py1;
  float px2;
  float py2;
  int grs;
  boolean est;
  boolean estC;
  lineacos(float p1x, float p1y, float p2x,float p2y,int gross){
    est = false;
    estC = false;
    px1 = p1x;
    py1 = p1y;
    px2 = p2x;
    py2 = p2y;
    grs = gross;
  }
  void dibLinea(){
    if (est == true && estC == false){
      stroke(255);
      strokeWeight(grs);
      line(px1,py1,px2,py2);
    }
    else if (est == true && estC == true){
      stroke(#3BD9FF);
      strokeWeight(grs);
      line(px1,py1,px2,py2);      
    }
  }
  void estL(boolean et){
    est = et;
  }
}
