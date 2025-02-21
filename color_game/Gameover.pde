void gameover() {
  if (score > highscore){
   highscore = score; 
  }
  background(#FFC4C4);
  fill(255);
  text("Highscore:"+highscore, width/2, height/2-200);
  text("Score:"+score, width/2+25, height/2- 120);
  
  circle( width - 75, height - 75, 100);
}

void gameoverClicks() {
  if (mouseX > 0 && mouseX< width && mouseY > 0 && mouseY < width) {
    mode = starts;
  }
}
