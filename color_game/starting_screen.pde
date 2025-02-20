void starts() {
  image(molgif[flip], 0, 0, width, height + 25);
  flip++;
  if (flip == molFrames) {
    flip = 0;
  }
  fill(255);
  textFont(cheese);
  textSize(100);
  text("True Color", 370, 80);
  rect(230, 140, 300, 55, 30);
  fill(0,0,0);
  textSize(40);
  text("Click Here!", 380, 165);
}

void startClicks() {
  if ( mouseX < 530 && mouseX > 230 && mouseY > 140 && mouseY < 195) {
    mode = game;
    //assigning variables
    randomWord = (int) random(0, 6);
    randomColor = (int) random(0, 6);
    //50-50 deciding thing
    decide = (int) random(0, 2);
    descent = -50;
  }
}
