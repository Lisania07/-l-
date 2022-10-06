void game() {
  background(255);
  fill(0);
  rect(0, 0, 450, 600);
  textAlign(CENTER, CENTER);
  textSize(50);
  fill(255);
  text("MATCH", 225, 300);
  fill(0);
  text("NOT MATCH", 665, 300);

  fill(colors[randomColor]);
  text(words[randomWords], width/2, height/2);

  if (randomColor==randomWords) {
    matched=true;
  } else {
    matched=false;
  }
  
  fill(0);
  text(lives, 800, 500);
  
  if(lives<=0){
    mode=GAMEOVER;
  }
}


void gameClicks() {
  if (mouseX>0&&mouseX<450&&mouseY>0&&mouseY<600) {
     p=(float)random(0,1);
    if (matched) {
      lives=lives+1;
    } else if (!matched) {
      lives=lives-1;
    }
  }
  if (mouseX>450&&mouseX<900&&mouseY>0&&mouseY<600) {

    p=(float)random(0,1);
    if (!matched) {
      lives=lives+1;
    } else if (matched) {
      lives=lives-1;
    }
  }
  puzzleGenerator();
}
