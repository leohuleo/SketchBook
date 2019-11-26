boolean dRow,fRow,jRow,kRow;

final int d = 1,f = 2,j = 3,k = 4;
final int intro = 0, game = 1, gameOver = 2;

int mode = 0;
int timeElapsed = 0;
int OnComingNote;
int score;

int[][] beatMap;

BufferedReader reader;
String lines;

Note note;
Line line;
ArrayList<GameObject> noteSeries;
PImage noteImage;
void setup(){
  size(500,800);
  String raw = "";
  reader = createReader("sample.txt");
  while(true){
  try{
    lines = reader.readLine();
  } catch(IOException e){
    lines = null;
  }
  if(lines == null){
    break;
  }else{
      raw = raw + lines;
    }
  }
  int k = 0;
  OnComingNote = 0;
  String[] tmp = raw.split(" ");
  beatMap = new int[tmp.length/2][2];
  for(int i = 0; i< beatMap.length; i++){
    for(int j = 0; j < beatMap[0].length;j++){
      beatMap[i][j] = Integer.parseInt(tmp[k]);
      k++;
    }
  }
  line = new Line();
  noteSeries = new ArrayList();
  noteSeries.add(line);
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
