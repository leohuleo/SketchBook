notes note = new notes(300,0,255);
final float speed = 3;
int frame = 0;
int currentIndex = 0;
notes[] noteList = new notes[10];
void setup(){
  size(600,800);
  background(0);
}

void draw(){
  frame++;
  background(0);
  stroke(255);
  strokeWeight(3);
  line(0,650,600,650);
  note.time = note.time + 1  ;
  note.createNote();
  note.y = note.y + speed;
}

class notes{
  float x;
  float y;
  int time;
  int fill;
  int startFrame;
  notes(float x1,float y1,int colour){
    time = 0;
    x = x1;
    y = y1;
    fill = colour;
  }
  
  void createNote(){
    fill(fill);
    rect(x,y,50,10);

  }
}

void mouseClicked(){
  if((650-note.y) < 100){
    note.fill = 0;
  }
}
