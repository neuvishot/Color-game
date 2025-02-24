// color game
// feb 11 2025

//framework variables
int mode;
final int starts = 1;
final int game = 2;
final int gameover = 3;

// fonts
PFont cheese;
  int ss = 100;
  int guh = 1;

// GIF variables
PImage[] molgif;
int molFrames;
int flip;

PImage[] congrats;
int molcong;
int conflip;

// word deciders
int randomWord;
int randomColor;
int decide;

// gameplay variables
int timer;
float descent;
boolean match;
int score, highscore;

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
  cheese = createFont("CheeseOrange-Regular.ttf", 1);// the number beside is size
  // gameplay
  score = highscore = 0;

  // gif car
  molFrames = 40;
  molgif = new PImage[molFrames];
  int frame = 0;
  while (frame < molFrames) {
    molgif[frame] = loadImage("frame_"+frame+"_delay-0.07s.gif");
    frame++;
  }

  // gif congrats
  molcong = 41;
  congrats = new PImage[molcong];
  int rah = 0;
  while (rah < molcong) {
    congrats[rah] = loadImage("frame_"+rah+"_delay-0.04s.gif");
    rah++;
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

void tactRect(float x, float y, float w, float h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY <  y + h) {
    stroke(255);
    fill(255);
  } else {
    stroke (0);
    fill(0);
  }
}

void circTact(float x, float y, float w) {
  if (dist(x, y, mouseX, mouseY) < w/2) {
    strokeWeight(2);
    stroke(#FFE5F7);
    fill(#FFE5F7);
  } else {
    strokeWeight(2);
  }
}
