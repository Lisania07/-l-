PImage[]gif;
PFont MIS;
int numberOfFrames;
int f;
float angle;
float ts;
boolean matched;
int lives;
float p=(float)random(0,1);
int highscore;

//mode framework
int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
//color
color red=#D82A2C;
color green=#2AD84B;
color blue=#1763E3;


color[]colors={red, green, blue};
String[]words={"RED", "GREEN", "BLUE"};


int randomColor=(int)random(0, 3);
int randomWords=(int)random(0, 3);


//keybaord
boolean akey, dkey;

void setup() {
  size(900, 600);
  numberOfFrames=16;
  gif=new PImage[numberOfFrames];


  int i=0;
  while (i<numberOfFrames) {
    gif[i]=loadImage("frame_"+i+"_delay-0.16s.gif");
    i++;
  }

  MIS= createFont("MIS.ttf", 200);
  mode=GAME;
  p=random(0, 1);
  lives=5;
  matched=true;
}



void draw() {


  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  } else  println("Error: Mode = "+mode);
}
