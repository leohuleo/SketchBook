class effect extends GameObject{
  float time;
  
  effect(int x){
    fill(255);
    rect(x,-50,50,1000);
    time = 255;
  }
  void show(){
    if(time>0){
      time-=0.1;
      fill(255,time);
    }else{
      lives = 0;
    }
  }
  
  void act(){};
}
