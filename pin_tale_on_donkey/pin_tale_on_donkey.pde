PImage donkey;
PImage tail; 
void setup(){
   size(800, 1000); 
  donkey = loadImage("donkey.jpg"); 
  donkey.resize(800,1000);
  background(donkey);  
 
  tail = loadImage("tail.png"); 
  tail.resize(400,399);
}

void draw(){
 if (mousePressed){
   image(tail,mouseX -211, mouseY-55);
   
 }
  rect(0,0,50,50);
if((mouseX > 0 && mouseX < 50) && (mouseY < 50 && mouseY > 0 )){
  background(donkey); 
    
    
  }else{
 background(255,255,255,255);
   if (mousePressed){
   image(tail,mouseX -211, mouseY-55);
   
 }
}

}