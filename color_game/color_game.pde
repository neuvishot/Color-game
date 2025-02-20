// color game
// feb 11 2025

//framework variables
int mode;
final int starts = 1;
final int game = 2;
final int gameover = 3;

// fonts
PFont cheese;

// GIF variables
PImage[] molgif;
int molFrames;
int flip;

// global variables
int randomWord;
int randomColor;
int decide;
int timer;
float descent;
boolean match;

// color variables
color red = #ff0000;
color green = #00ff00;
color blue = #0000ff;
color yellow = #F4FF5A;
color purple = #D26AFF;
color pink = #FF86E5;

//array
String[] words = {"RED", "GREEN", "BLUE", "YELLOW", "PURPLE", "PINK"};
color[] colors = {red, green, blue, yellow, purple, pink};

void setup() {
  size(600, 600);
  mode = starts;
  textAlign(CENTER, CENTER);
  descent = -50;

  //font
  cheese = createFont("CheeseOrange-Regular.ttf",1);// the number beside is size


  // gif
  molFrames = 40;
  molgif = new PImage[molFrames];
  int frame = 0;
  while (frame < molFrames) {
    molgif[frame] = loadImage("frame_"+frame+"_delay-0.07s.gif");
    frame++;
  }
}

void draw() {
  println(mouseX, mouseY);
  //println(decide, randomWord, randomColor);
  if (mode == starts) {
    starts();
  } else if (mode == game) {
    game();
  } else if (mode == gameover) {
    gameover();
  }
}

void mousePressed() {
  if (mode == starts) {
    startClicks();
  } else if (mode == game) {
    gameClicks();
  } else if (mode == gameover) {
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
