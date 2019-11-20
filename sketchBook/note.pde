class Note{
  int lifeTime;
  int row;
  int speed;
  final int spawnX = 100;
  int currentY;
  Note(int r){
    row = r;
    currentY = 0;
    speed = 20;
  }
  void move(){
    currentY += speed;
    pushMatrix();
    translate(spawnX, currentY);
    image(noteImage,0,0);
    noteImage.resize(50,50);
    popMatrix();
  }
  
  void act(){}
}
