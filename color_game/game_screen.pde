void game(){
  background(#8BCEC9);
    wordColors(300, descent);
    descent++;
    
    if (descent == 400){
      descent = 0;
      wordColors(300, descent);
    }
}

void gameClicks(){
  if (mouseX < 0 && mouseX< width && mouseY > 0 && mouseY < width){
   //assigning variables
    randomWord = (int) random(0, 6);
    randomColor = (int) random(0, 6);
    //50-50 deciding thing
    decide = random(0, 1);
  }
  
}

void wordColors(float x, float y) { // words fucntion
  pushMatrix();
  translate(x, y);

  if (decide < .5) {
    randomColor = randomWord;
    fill(colors[randomColor]);
    text(words[randomWord], 0, 0);
  } else {
    fill(colors[randomColor]);
    text(words[randomWord], 0, 0);
  }
  popMatrix();
}
