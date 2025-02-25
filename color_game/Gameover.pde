void gameover() {
  ingame.pause();
  success.pause();
  fail.play();

  if (score > highscore) {
    highscore = score;
  }
  
  // background ------------------------------------------------
  background(#FFC4C4);
  fill(255);

  int gh = 50;
  while (gh < 600) {
    circle(gh, 5, 100);
    gh = gh + 100;
  }
  fill(#FAF0F6);
  ellipse(300, 600, 1000, 300);
  fill(255);
  rect(-1, -1, 20, height);
  rect(580, -1, 20, height);

  // gif-----------------------------------------------------------------
  image(congrats[conflip], -40, 210, 500, 350);
  if (frameCount % 2 == 0) conflip++;
  if (conflip == molcong) {
    conflip = 0;
  }
  
  fill(#FFC4C4);
  rect(80, 230, 330, 75);

  // text ------------------------------------------------------
  fill(255);
  textFont(cheese);
  textSize(100);
  text("Highscore:"+highscore, width/2, 130);
  text("Score:"+score, width/2+25, 220);
  stroke(#BC7BA9);
  circTact( width - 75, height - 75, 100);
  strokeWeight(4);
  fill(255);
  circle( width - 75, height - 75, 100);

  fill(#BC7BA9);
  circTact( width - 75, height - 75, 100);
  arrow(485, 515, .5);
}

void gameoverClicks() {
  if (dist(mouseX, mouseY, width - 75, height - 75) < 50) {
    mode = starts;
    music.rewind();
  }
}

void arrow(float x, float y, float s) {
  pushMatrix();
  noStroke();
  translate(x, y);
  scale(s);
  rect(25, 0, 75, 50);
  triangle(100, -25, 150, 25, 100, 75);
  popMatrix();
}
