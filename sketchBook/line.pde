class Line extends GameObject{
  
  Line(){
    currentY = 700;
    speed = 0;
    lives = 1;
  }
  void show(){
    stroke(255);
    strokeWeight(5);
    line(-50,currentY,550,currentY);
  }
  
  void act(){
  }
}
