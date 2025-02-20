int s = 100;
int r = 1;

void game() {
  background(#8BCEC9);
  fill(255);
  rect(300, -4, 400, 800);
  ellipse(300, 600, 1000, 300);
  // text
  textSize(50);
  text("Match", width/4, 50);
  fill(200);
  text("Don't Match", (width/4)*3, 50);

  if (randomWord == randomColor || randomColor == randomWord) {
    match = true;
  }

  textSize(s);
  s = s + r;
  if (s == 110|| s == 90) {
    r = r *-1;
  }

  if (decide == 0) {
    match = true;
  } else if (decide == 1) {
    match = false;
  }
  wordColors(300, descent);
  descent = descent + 3;

  if (descent == 400) {
    // losing
    mode = gameover;
  }
}

void gameClicks() {

  if (match == true) {
    if (mouseX > 0 && mouseX< width/2 && mouseY > 0 && mouseY <height) {
      //assigning variables
      randomWord = (int) random(0, 6);
      randomColor = (int) random(0, 6);
      //50-50 deciding thing
      decide = (int) random(0, 2);
      descent = -50;
    } else if (mouseX > width/2 && mouseX< width && mouseY > 0 && mouseY < height) {
      mode = gameover;
    }
  }

  if (match == false) {
    if (mouseX > width/2 && mouseX< width && mouseY > 0 && mouseY < height) {
      //assigning variables
      randomWord = (int) random(0, 6);
      randomColor = (int) random(0, 6);
      //50-50 deciding thing
      decide = (int) random(0, 2);
      descent = -50;
    } else if (mouseX > 0 && mouseX< width/2 && mouseY > 0 && mouseY <height) {
      mode = gameover;
    }
  }
}

void wordColors(float x, float y) { // words fucntion
  pushMatrix();
  translate(x, y);

  if (match == true) { // basically saying if decide is les that .5 then
    randomColor = randomWord;// the colors would always match the text
    fill(colors[randomColor]);
    text(words[randomWord], 0, 0);
    //match = true;
  }
  if (match == false) {
    fill(colors[randomColor]);
    text(words[randomWord], 0, 0);
    //match = false;
  }
  popMatrix();
}
