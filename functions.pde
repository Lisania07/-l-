void puzzleGenerator() {


float p=(float)random(0,0.4);
  if (p<0.5) {
    randomColor=randomWords;   
  } else {
    randomWords=(int)random(0, 3);
    while (randomWords==randomColor) {
     randomColor=(int)random(0, 3);
    }
  }


  textSize(50);

  fill(colors[randomColor]);
  text(words[randomWords], width/2, height/2);
}
