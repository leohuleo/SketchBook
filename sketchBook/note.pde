class Note extends GameObject{
  int spawnTime;
  int row;
  Note(int r){
    row = r;
    currentY = 0;
    speed = 5;
    x = 50 + row * 100;
  }
  void show(){
    currentY += speed;
    pushMatrix();
    translate(x, currentY);
    image(noteImage,0,0);
    noteImage.resize(50,15);
    popMatrix();
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
    while(i<noteSeries.size()){
     GameObject currentObject = noteSeries.get(i);
     if(currentObject instanceof Note){
       if((Math.abs(line.currentY - currentY) < 30) && qte){
         noteSeries.remove(i);
         noteSeries.add(new effect(row * 100));
       }
     }
     i++;
    }
  }
}
