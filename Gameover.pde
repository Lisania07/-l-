void gameover(){
  
  background(0);
    fill(255);
  textSize(50);
  text("gameover",300,300);
  if(lives>highscore){
    highscore=lives;
  }

  text(highscore,300,400);
}

void gameoverClicks(){
  mode=INTRO;
}
