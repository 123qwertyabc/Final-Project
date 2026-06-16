  // Bryson Kwong
// Final Project
//variables
float blueX, blueY, redX, redY, bvx, bvy, rvx, rvy, bd, rd;
//bools
boolean akey, dkey, wkey, skey, upkey, downkey, rightkey, leftkey;
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
  //intialize variables
  blueX = 170;
  blueY = height/2;
  redX = 630;
  redY = height/2;
  bvx = bvy = rvx = rvy = 2;
  bd = rd = 100;
  //initialize keyboard vars
  akey = dkey = wkey = skey = upkey = downkey = leftkey = rightkey = false;
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
