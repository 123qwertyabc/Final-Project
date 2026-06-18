void intro() {
  background(255);
  fill(0);
  textSize(100);
  text("SPIN WARS", 160, 200);
  textSize(50);
  text("Click Anywhere to Begin", 90, 600);
}
void introClicks() {
  setup();
  mode=GAME;
}
