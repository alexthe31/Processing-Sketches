int cookies = 0;
boolean togglemenu;
void setup(){
  size(600,800);
}
void draw(){
  background(255);
  noStroke();
  if(mousePressed && (mouseX < 534 && mouseX > 515) && (mouseY < 140  && mouseY > 123)){
    togglemenu=!togglemenu;
  }
  if(mousePressed){
println("X: " + mouseX + " Y: " + mouseY); 
}
  if(togglemenu=true){
    minimenu();
  }
fill(180,111,5);
  ellipse(300,400,200,200);
  fill(82, 50, 1);
  ellipse(250,375,20,20);
  ellipse(266,424,20,20);
  ellipse(325,431,20,20);
  ellipse(342,378,20,20);
  ellipse(305,382,20,20);
  text(cookies + " Cookies",250, 600);
  
  fill(252,13,13);
  ellipse(525,131,20,20);

}

void minimenu(){ 
//dividers
fill(250, 86, 86);
rect(420,150,170,400);
 
 fill(20, 86, 86);
rect(420,150,170,20);

fill(20, 86, 86);
rect(420,200,170,20);

fill(20, 86, 86);
rect(420,250,170,20);

fill(20, 86, 86);
rect(420,300,170,20);

fill(20, 86, 86);
rect(420,350,170,20);

fill(20, 86, 86);
rect(420,400,170,20);

fill(20, 86, 86);
rect(420,450,170,20);

fill(20, 86, 86);
rect(420,500,170,20);

fill(20, 86, 86);
rect(420,550,170,20);






}
 
 void mouseclicked(){
   if((mouseX < 401 && mouseX > 197) && (mouseY < 503 && mouseY > 301)){
  cookies+=1;
    }
    
    //minimenu buttons
   if((mouseX < 590 && mouseX > 420) && (mouseY < 200 && mouseY > 170)){
  
 }
 
   if((mouseX < 590 && mouseX > 420) && (mouseY < 200 && mouseY > 170)){
   fill(22,1,1);  
 }
 
   if((mouseX < 590 && mouseX > 420) && (mouseY < 200 && mouseY > 170)){
   fill(22,1,1);  
 }
 
 
 
 }
  