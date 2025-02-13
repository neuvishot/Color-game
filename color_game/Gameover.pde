void gameover() {
  background(#FFC4C4);
}

void gameoverClicks() {
  if (mouseX > 0 && mouseX< width && mouseY > 0 && mouseY < width) {
    mode = starts;
  }
}
