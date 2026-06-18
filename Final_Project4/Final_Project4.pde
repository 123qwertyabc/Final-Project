  // Bryson Kwong
// Final Project
//fonts
PFont font;
//variables
float blueX, blueY, redX, redY, bvx, bvy, rvx, rvy, bd, rd, arenaX, arenaY, arenaD;
//bools
boolean akey, dkey, wkey, skey, upkey, downkey, rightkey, leftkey, redWin, blueWin;
// mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
// color variables
color darkBeige = #D0BA98;
color blue = #007dff;
color lightBlue = #FF29B6F6;
color purple = #360f5a;
color beige = #D7C9B2;
color red = #E3242B;
color rose = #ff8080;
void setup () {
  size(800, 800);
  font = createFont("Vito Bold.otf", 100);
  textFont(font);
  //intialize variables
  blueX = 170;
  blueY = height/2;
  redX = 630;
  redY = height/2;
  bvx = bvy = rvx = rvy = 2;
  bd = rd = 100;
  arenaD = 550;
  arenaX = width/2;
  arenaY = height/2;
  //initialize keyboard vars & other bools
  akey = dkey = wkey = skey = upkey = downkey = leftkey = rightkey = redWin = blueWin = false;
  mode = INTRO;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME){
    game();
  } else if (mode == PAUSE){
    pause();
  } else if (mode == GAMEOVER){
    gameover();
  } else {
    println("Error Mode = " + mode);
  }
}
