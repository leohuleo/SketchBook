void game(){
  background(0);
  int i = 0;
  while(i<noteSeries.size()){
    GameObject currentNote = noteSeries.get(i);
    currentNote.show();
    currentNote.act();
    i++;
  }
}
