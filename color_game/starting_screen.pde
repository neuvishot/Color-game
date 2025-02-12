void starts() {
  background(#C68A8A);
  textSize(100);
  text("True Color", 300, 240);
  rect(125, 310, 350, 75, 30);
}

void startClicks() {
  if ( mouseX < 475 && mouseX >125 && mouseY > 310 && mouseY < 385) {
    mode = game;

    //assigning variables
    randomWord = (int) random(0, 6);
    randomColor = (int) random(0, 6);
    //50-50 deciding thing
    decide = random(0, 1);
  }
}
