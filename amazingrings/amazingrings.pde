int x = 0;
void setup(){ 
  size(1000,1000);
noFill();
}
void draw(){
background(255);
x+=5;
  int w = 300;
  int h = 300;
  for(int i=30; i>0; i--){
    ellipse(x,500,w,h);
    w = w-10;
    h = h-10;
  }
   int w2 = 300;
   int h2 = 300;
  for(int i=30; i>0; i--){
    ellipse(1000-x,500,w2,h2);
    w2 = w2-10;
    h2 = h2-10;
  }
  if(w==1000||w==0||w2==1000||w2==0){
    
  }
}