class Line extends GameObject{
  
  Line(){
    currentY = 700;
    speed = 0;
  }
  void show(){
    stroke(100);
    strokeWeight(5);
    fill(255);
    line(-50,currentY,550,currentY);
  }
  
  void act(){
  }
}
