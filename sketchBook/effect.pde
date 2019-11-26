class Effect extends GameObject{
    int time;
    Effect(int row){
       x = row * 100 - 25;
       lives = 1;
       time = 255;
    }
    
    void show(){
       if( time > 0){
       fill(255,time);
       noStroke();
       rect(x,0,50,1000);
       time-=5;  
       }else {
         lives = 0;
       }
    };
    void act(){};
}
