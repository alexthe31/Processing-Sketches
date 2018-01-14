AudioSample doh;
AudioSample woohoo;
void setup() {
      PImage waldo = loadImage("waldo.jpg"); // 5. Change this to match your file name.
      size( 1030 ,770);
      image(waldo, 0, 0);
doh = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-doh.wav");
woohoo = minim.loadSample("334014__17lijo__goodjob.mp3");
}
void draw() {

      // 6. Use this print statement to find out the coordinates of Waldo
    

      // 7. If the mouse is on Waldo, print “Waldo found!”
if(mousePressed){
    if((mouseX > 172 && mouseX < 185) && (mouseY < 176 && mouseY > 156 )){
      println("good");
playWoohoo();
    }else if(mousePressed){
      playDoh();
} 
} 
}      // 8. If Waldo is found, also use the method below to play “Woohoo”

      // 9. If the mouse is pressed and they’re not on Waldo, play “Doh”
   // Change the name of the sound file if you need to
   


void playWoohoo() {
     woohoo.stop();
     woohoo.trigger();
}

void playDoh() {
     doh.stop();
     doh.trigger();
}

import ddf.minim.*;
Minim minim = new Minim(this); 