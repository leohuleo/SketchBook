class Note extends GameObject{
  int row;
  int h;
  Note(int r){
    row = r;
    currentY = 0;
    speed = 5;
    x =row * 100 - 25;
    lives = 1;
    
  }
  void show(){
    currentY += speed;
    pushMatrix();
    translate(x, currentY);
    image(noteImage,0,0);
    noteImage.resize(50,15);
    popMatrix();
    if(currentY >850){
      lives = 0;
      mode = gameOver;
    }
  }
  
  void act(){
    int i = 0;
    boolean qte;
    switch(row){
      case 1:
      qte = dRow;
      break;
      case 2:
      qte = fRow;
      break;
      case 3:
      qte = jRow;
      break;
      case 4:
      qte = kRow;
      break;
      default:
      qte = true;
      break;
    }
    if(Math.abs(currentY - line.currentY) < 15 && qte){
      lives = 0;
      score++;
      noteSeries.add(new Effect(row));
    }else if((Math.abs(currentY - line.currentY) > 15 && Math.abs(currentY - line.currentY) < 60) && qte){
      lives = 0;
    }
     i++;
    }
  
}
