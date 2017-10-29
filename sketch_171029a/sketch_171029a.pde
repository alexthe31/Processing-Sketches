float a= (20);
float b= (20);
color ca= color(255);
color cb= color(255);
color cr= color(255);
void setup() {
    size(1000, 600);

}

void draw() {
          color (203, 734, 834);
 background(0);
  
 
 
    //3. make it a nice color

    //4. if the mouse is pressed...
if(mousePressed){
 a+=random(.1,5);
 b+=random(.1,5);
}else{
}
if(keyPressed){
b+=2;
a+=1;
}else{
}

 


if(a >= 980 && b < 980){
ca= color(9,222,98);
cr=ca;
}
 fill(ca);
ellipse(a, 150, 200, 200);
 
if(b >= 980 && a < 980){
 cb =color(3,56,97);
  cr=cb;

}
fill(cb);
 ellipse(b, 400, 200, 200);
fill(cr);
rect(980,-1,20,800);

}


import ddf.minim.*;
boolean soundPlayed = false;
void playSound() {
    if (!soundPlayed) {
        Minim minim = new Minim(this);
        AudioSample sound = minim.loadSample("ding2.wav");
        sound.trigger();
        soundPlayed = true;
    }
}