// color game
// feb 11 2025

//framework variables
int mode;
final int starts = 1;
final int game = 2;
final int gameover = 3;

void setup() {
  size(600, 600);
  mode = starts;
  textAlign(CENTER, CENTER);
}

void draw(){
  println(mouseX, mouseY);
  if (mode == starts) {
   starts(); 
  } else if (mode == game){
   game(); 
  }else if (mode == gameover){
    gameover();
  }
}

void mousePressed(){
 if (mode == starts){
   startClicks();
 } else if (mode == game){
   gameClicks();
 } else if (mode == gameover){
  gameoverClicks(); 
 }
}

void circTact(float x, float y, float w) {
  if (dist(x, y, mouseX, mouseY) < w/2) {
    strokeWeight(2);
    stroke(#FFFFFF);
  } else {
    strokeWeight(2);
    stroke(#050000);
  }
}
