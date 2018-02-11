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
  if(togglemenu==true){
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
  fill(238, 93, 93);
ellipse(525,131,20,20);

rect(420,200,170,20);
 if(mousePressed && (mouseX < 401 && mouseX > 197) && (mouseY < 503 && mouseY > 301)){
  cookies+=1;
    }

}

void minimenu(){ 
  
  rect(420,150,170,400);
  
}
 
 
  