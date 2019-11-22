class effect extends GameObject{
  float time;
  
  effect(int x){
    fill(255);
    rect(x,-50,100,1000);
    time = 0;
  }
  void show(){
    fill(255,100 - time);
    if(time < 100)time += 0.5;
    
  }

}
