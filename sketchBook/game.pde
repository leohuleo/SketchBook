void game(){
  background(0);
  textAlign(CENTER);
  fill(255);
  text("" + score,250,400);
  if(OnComingNote < beatMap.length - 1){
  if(timeElapsed == beatMap[OnComingNote][0]){
    OnComingNote++;
    Note note = new Note(beatMap[OnComingNote][1]);
    noteSeries.add(note);
  }
  }
  int i = 0;
  while(i<noteSeries.size()){
    GameObject currentNote = noteSeries.get(i);
    currentNote.show();
    currentNote.act();
    i++;
  }
  int j = 0;
  while(j<noteSeries.size()){
    GameObject currentNote = noteSeries.get(j);
    if(currentNote.lives == 0){
      noteSeries.remove(j);
    }
    j++;
  }
  timeElapsed++;
}
