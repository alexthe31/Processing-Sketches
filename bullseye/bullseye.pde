void setup(){ 
  size(1000,1000);
}
void draw(){
  int w = 500;
  int h = 500;
  for(int i=4; i>0; i--){
    ellipse(500,500,w,h);
    w = w-125;
    h = h-125;
  }
}