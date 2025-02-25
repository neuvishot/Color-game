int s = 100;
int r = 1;

void game() {
  ingame.play();
  background(255);
  fill(#8BCEC9);
  rect(300, -4, 400, 800);
  // text
  textSize(50);
  fill(#8BCEC9);
  text("Match", width/4, 50);
  fill(255);
  text("Don't Match", (width/4)*3, 50);

  // fixing the bug ghhgshfhghgskhg (currently it works) ------------------------
  if (randomWord == randomColor || randomColor == randomWord) {
    decide = 0;
  }
  if (decide == 0) {
    match = true;
  } else if (decide == 1) {
    match = false;
  }

  // text enlargement ------------------------------------------
  textSize(s);
  s = s + r;
  if (s == 110|| s == 90) {
    r = r *-1;
  }

  // word function and descent----------------------------------
  wordColors(300, descent);
  descent = descent + 3;

  if (descent > 525) {
    // losing
    mode = gameover;
    fail.rewind();
  }
  fill(#8c89d1);
  noStroke();
  ellipse(300, 600, 1000, 300);
  textSize(50);
  fill(255);
  text("Score:"+score, 80, 560);
}

void gameClicks() {
  if (match == true) {
    if (mouseX > 0 && mouseX< width/2 && mouseY > 0 && mouseY <height) {
      //assigning variables
      success.play();
      randomWord = (int) random(0, 6);
      randomColor = (int) random(0, 6);
      //50-50 deciding thing
      decide = (int) random(0, 2);
      descent = -50;
      score++;
      success.rewind();
    } else if (mouseX > width/2 && mouseX< width && mouseY > 0 && mouseY < height) {
      mode = gameover;
      fail.rewind();
    }
  }

  if (match == false) {
    if (mouseX > width/2 && mouseX< width && mouseY > 0 && mouseY < height) {
      success.play();
      //assigning variables
      randomWord = (int) random(0, 6);
      randomColor = (int) random(0, 6);
      //50-50 deciding thing
      decide = (int) random(0, 2);
      descent = -50;
      score++;
      success.rewind();
    } else if (mouseX > 0 && mouseX< width/2 && mouseY > 0 && mouseY <height) {
      mode = gameover;
      fail.rewind();
    }
  }
}

void wordColors(float x, float y) { // words fucntion
  pushMatrix();
  translate(x, y);
  if (match == true) { // basically saying if decide is less than 1 then
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
