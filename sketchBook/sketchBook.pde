boolean dRow,fRow,jRow,kRow;

final int d = 1,f = 2,j = 3,k = 4;
final int intro = 0, game = 1, gameOver = 2;

int mode = 0;

PImage noteImage;
void setup(){
  size(500,800);
  noteImage = loadImage("notes.png");
}

void draw(){
  if(mode == intro){
    intro();
  }else if(mode == game){
    game();
  }else if(mode == gameOver){
    gameOver();  
  }
}

void keyPressed(){
  if(key == 'd')dRow = true;
  if(key == 'f')fRow = true;
  if(key == 'j')jRow = true;
  if(key == 'k')kRow = true;
}

void keyReleased(){
  if(key == 'd')dRow =false;
  if(key == 'f')fRow =false;
  if(key == 'j')jRow =false;
  if(key == 'k')kRow =false;
}

void mouseReleased(){
  if(mode == gameOver){
    mode = intro;
  }else{
    mode++;
  }
}
