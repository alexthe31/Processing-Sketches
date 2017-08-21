void setup(){
 size(1000,800);
}
void draw(){fill(255,255,255);
  ellipse(500,400,600,600);
  if(mousePressed){
    println(mouseX + " " + mouseY);
    fill(255,0,0);
     }
  else{
    fill(255,255,255);
  }
   
  ellipse(392,280,200,200);
    
  ellipse(610,280,200,200);
  
  ellipse(500,500,200,0);
  fill(0,0,0);
  ellipse(610,280,20,20);
  ellipse(392,280,20,20);
 
}
