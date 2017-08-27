void setup(){
  size(1000,800);
    PImage face = loadImage("face.jpg");
image(face,0,0);
face.resize(1000,800);
}
void draw(){



ellipse(500,500,600,600);
fill(100,100,100,100);

}