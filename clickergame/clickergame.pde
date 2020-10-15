import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



Minim minim;
AudioPlayer song;

//Daniel Altshuler
//block 1-1b
//October 8, 2020
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int SHOP = 4;

int startSize;

//target variables ===============================
float x, y, d, vx, vy;
int score, lives, currentHighscore, points;
float scoreSpeed;
float cloud1x;
float cloud2x;
float suny, sunyvy;
float exitx, exity, exitw, exith;
float exitText;
float dollarx, dollary;


//color pallette
color red = #FF0000;
color white = #FFFFFF;
color black = #000000;
color blue = #00FFFF;
color darkBlue = #180ABF;
color yellow = #FFFF00;
color brown = #86530F;
color green = #00FF00;
color darkGreen = #123906;
color grey = #6C6161;
color lightBrown = #F5AB60;
color lightGrey = #C7C7CB;
color orange = #FFB908;
color pink = #FF0554;

color gameoverStroke;
color pauseStroke;
color pausebgFill;
color pauseFill;
color strokeColor1;
color strokeColor2;
color strokeColor3;
color strokeColor4;
color strokeColor5;
color strokeColor6;
float bg;

boolean classicb;
boolean blueBlackb;
boolean rainbowb;
boolean zeldab;
boolean valorantb;
boolean ggb;



void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  startSize = 60;
  
  minim = new Minim(this);
  song = minim.loadFile("mario bros theme.mp3");
  song.rewind();
  song.play();
  
  

 
 
  
  //targer initialiazation
  x = width/2;
  y = height/2;
  d = 100;
  
   score = 0;
  lives = 3;
  currentHighscore = score;
  points = 0;
  
  vx = 5;
  vy = 5;
  
  cloud1x = 100;
  cloud2x = 600;
  suny = 150;
  sunyvy = 0.5;
  
 exitx = 50;
 exity = 700;
 exitw = 100;
 exith = 50;
 
 exitText = 40;
 
 dollarx = 100;
 dollary = 700;
 
 classicb = true;
 blueBlackb = false;
 rainbowb = false;
 zeldab = false;
 valorantb = false;
 ggb = false;

  
  
  
}

void draw () {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == SHOP) {
    shop();
  } else {
    println("Error: Mode = " + mode);
  }
  
}
