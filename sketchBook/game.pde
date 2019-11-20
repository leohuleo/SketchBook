void game(){
  background(0);
  Note note = new Note(d);
  if(note.currentY < 500){
    note.move();
  }
}
