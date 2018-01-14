int cookies = 0;
void setup(){
  size(600,800);
}
void draw(){
  background(255);
  noStroke();
fill(180,111,5);
  ellipse(300,400,200,200);
  fill(82, 50, 1);
  ellipse(250,375,20,20);
  ellipse(266,424,20,20);
  ellipse(325,431,20,20);
  ellipse(342,378,20,20);
  ellipse(305,382,20,20);
  text(cookies + " Cookies",250, 600);
  fill(238, 93, 93);
ellipse(525,131,20,20);

if(mousePressed){
println("X: " + mouseX + " Y: " + mouseY); 
}
 if(mousePressed && (mouseX < 401 && mouseX > 197) && (mouseY < 503 && mouseY > 301)){
  cookies+=1;
    }

}

   