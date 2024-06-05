class estrella{
  float posX;
  float posY;
  float radius;
  String nombreEst = "";
  String descrip = "";
  boolean actv = false;
  float randomCl;
  float movX;
  float movY;
  
  
  estrella(float x, float y, float dmt, String nom, String des){
    posX = x;
    posY = y;
    radius = dmt;
    nombreEst = nom;
    descrip = des;
    randomCl = random(150,250);
    movX = 0;
    movY = 0;
  }
  
  
  void dibEstrella(){
    if (actv == false){
      randomCl = random(120,250);
      noStroke();
      fill(randomCl);
    }
    else{
      fill(#3BD9FF);
      stroke(#3BD9FF);
      strokeWeight(2);
      if (movX < width/1000 && movY < width/1000){
        line((posX-(radius+width/1200)-movX),posY,(posX-(radius+width/450)-movX),posY);
        line((posX+(radius+width/1200)+movX),posY,(posX+(radius+width/450)+movX),posY);
        line(posX,(posY-(radius+height/600)-movY),posX,(posY-(radius+height/300)-movY));
        line(posX,(posY+(radius+height/600)+movY),posX,(posY+(radius+height/300)+movY));
        movX=movX+(width/1000);
        movY=movY+(width/1000);
      }
      else if (movX > 0 && movY > 0){
        line((posX-(radius+width/1200)-movX),posY,(posX-(radius+width/450)-movX),posY);
        line((posX+(radius+width/1200)+movX),posY,(posX+(radius+width/450)+movX),posY);
        line(posX,(posY-(radius+height/600)-movY),posX,(posY-(radius+height/300)-movY));
        line(posX,(posY+(radius+height/600)+movY),posX,(posY+(radius+height/300)+movY));
        movX=movX-(width/1000);
        movY=movY-(width/1000);
      }
    }
    noStroke();
    circle(posX,posY,radius);
  }
  
  void dibCuCel(color colour){
     if (actv == false){
      noStroke();
      fill(colour);
    }
    else{
      fill(#3BD9FF);
      stroke(#3BD9FF);
      strokeWeight(2);
      if (movX < width/1000 && movY < width/1000){
        line((posX-(radius+width/1200)-movX),posY,(posX-(radius+width/450)-movX),posY);
        line((posX+(radius+width/1200)+movX),posY,(posX+(radius+width/450)+movX),posY);
        line(posX,(posY-(radius+height/600)-movY),posX,(posY-(radius+height/300)-movY));
        line(posX,(posY+(radius+height/600)+movY),posX,(posY+(radius+height/300)+movY));
        movX=movX+(width/1000);
        movY=movY+(width/1000);
      }
      else if (movX > 0 && movY > 0){
        line((posX-(radius+width/1200)-movX),posY,(posX-(radius+width/450)-movX),posY);
        line((posX+(radius+width/1200)+movX),posY,(posX+(radius+width/450)+movX),posY);
        line(posX,(posY-(radius+height/600)-movY),posX,(posY-(radius+height/300)-movY));
        line(posX,(posY+(radius+height/600)+movY),posX,(posY+(radius+height/300)+movY));
        movX=movX-(width/1000);
        movY=movY-(width/1000);
      }
    }
    noStroke();
    circle(posX,posY,radius);
  }
  
  
  void desEstrella(){
    if (actv == true){
      fill(255);
      textFont(fuente);
      textLeading(10);
      textSize((20*width)/1920);
      text(nombreEst,width-(width/8),height/4,width/9,height/3);
      textSize((14*width)/1920);
      text(descrip,width-(width/8),(height/4)+((30*height)/1080),width/9,height/2-((30*height)/1080));
    }
    else {
      text("",0,0);
    }
  }
  
  
  boolean clickedEs(int x,int y){
    float d = dist(x,y,posX,posY);
    if (d < (radius/2)){
      actv = true;
    }
    else{
      actv = false; 
    }
    return(actv);
  }
  float posXE(){
    return posX;
  }
  float posYE(){
    return posY;
  }
  
  
  void reset(){
    background(0); 
  }
}
