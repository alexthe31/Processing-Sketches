PImage creeper;
void setup(){
size(800, 1000);
PImage minecraft = loadImage("back.png"); 
minecraft.resize(width, height); 
background(minecraft); 
creeper=loadImage("creeper.jpg"); 
creeper.resize(100, 110);

}
void draw(){
 ellipse(100,100,200,200);
   image(creeper,20,20); 
  if((mouseX > 0 && mouseX < 50) && (mouseY < 50 && mouseY > 0 ));




}