void gameover() {
  background(0);
  textSize(100);
  fill(255);
  text("GAME OVER", 125, 400);
  if (blueWin == true) {
    fill(blue);
    text("Blue Wins", 160, 600);
  }
  if (redWin == true) {
    fill(red);
    text("Red Wins", 180, 600);
  }
}
void gameoverClicks() {
  mode=INTRO;
}
