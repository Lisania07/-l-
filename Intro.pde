void intro(){
  //gif
  image(gif[f], 0, 0, width, height);
  println(frameCount);
  if (frameCount %5==0)f=f+1;
  if (f==numberOfFrames)f=0;
  //text
  text(450, 300);
  fill(0);
  circle(800,500,50);

}

void text(int x, int y) {
  translate(x, y);
  textAlign(CENTER, CENTER);

  angle=angle+0.03;
  rotate(angle);
  fill(255);
  textFont(MIS);
  text("Colors", 0, 0);
  
}

void introClicks() {
    mode=GAME;
  }
