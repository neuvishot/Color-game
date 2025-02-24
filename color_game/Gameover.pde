void gameover() {
  if (score > highscore) {
    highscore = score;
  }
  background(#FFC4C4);
  fill(255);
  textFont(cheese);
  textSize(100);
  text("Highscore:"+highscore, width/2, 65);
  text("Score:"+score, width/2+25, 150);
  stroke(#BC7BA9);
  circTact( width - 75, height - 75, 100);
  strokeWeight(4);
  fill(255);
  circle( width - 75, height - 75, 100);

  // gif

  image(congrats[conflip], -60, 230, 500, 350);
  if (frameCount % 2 == 0) conflip++;
  if (conflip == molcong) {
    conflip = 0;
  }
  fill(#BC7BA9);
  circTact( width - 75, height - 75, 100);
  arrow(485, 515, .5);
}

void gameoverClicks() {
  if (mouseX > 0 && mouseX< width && mouseY > 0 && mouseY < width) {
    mode = starts;
  }
}

void arrow(float x, float y, float s){
  pushMatrix();
  noStroke();
  translate(x, y);
  scale(s);
  rect(25, 0, 75, 50);
  triangle(100, -25, 150, 25, 100, 75);
  popMatrix();
}
