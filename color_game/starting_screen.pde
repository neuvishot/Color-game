void starts() {
  image(molgif[flip], 0, 0, width, height + 25);
  if (frameCount % 2 == 0) flip++;
  if (flip == molFrames) {
    flip = 0;
  }

  // text true color
  textFont(cheese);
  textSize(100);
  fill(255);
  text("True Color", 370, 80);

  // rect
  strokeWeight(2);
  tactRect(230, 140, 300, 55);
  fill(#FCD9F6);
  rect(230, 140, 300, 55, 30);

  // click here text
  stroke(1);
  textSize(40);
  tactRect(230, 140, 300, 55);
  text("Click Here!", 380, 163);
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
    score = 0;
  }
}
