void game() {
  background(purple);
  fill(darkBeige);
  strokeWeight(10);
  circle(width/2, height/2, arenaD);
  strokeWeight(0);
  fill(beige);
  circle(width/2, height/2, 430);
  // blue spinner
  strokeWeight(10);
  fill(lightBlue);
  circle(blueX, blueY, bd);
  fill(blue);
  circle(blueX, blueY, bd/2);
  //red spinner
  fill(rose);
  circle(redX, redY, rd);
  fill(red);
  circle(redX, redY, rd/2);
  //control blue
  if (akey == true && dkey == false|| dkey == true && akey==false) {
    bvx = bvx + 0.05;
  } else {
    bvx = 2;
  }
  if (skey == true && wkey == false|| wkey == true && skey==false) {
    bvy = bvy + 0.05;
  } else {
    bvy = 2;
  }
  if (dist(blueX, blueY, redX, redY) <= rd) {
    bvx=0-bvx;
    bvy=0-bvy;
    rvx=0-rvx;
    rvy=0-rvy;
  }
  if (dist(blueX, blueY, arenaX, arenaY)>= 275+bd/2 && bd > 0) {
    bd=bd-2;
    wkey = akey = skey = dkey = upkey = downkey = rightkey = leftkey = false;
  }
  if (dist(redX, redY, arenaX, arenaY)>= 275+rd/2 && rd > 0) {
    rd=rd-2;
    wkey = akey = skey = dkey = upkey = downkey = rightkey = leftkey = false;
  }
  if (rd==0) {
    blueWin=true;
    redWin=false;
    mode=GAMEOVER;
  }
  if (bd==0) {
    redWin=true;
    blueWin=false;
    mode=GAMEOVER;
  }
  if (akey == true) blueX = blueX - bvx;
  if (dkey == true) blueX = blueX + bvx;
  if (wkey == true) blueY = blueY - bvy;
  if (skey == true) blueY = blueY + bvy;
  //control red
  if (rightkey == true && leftkey == false|| leftkey == true && rightkey==false) {
    rvx = rvx + 0.05;
  } else {
    rvx = 2;
  }
  if (downkey == true && upkey == false|| upkey == true && downkey==false) {
    rvy = rvy + 0.05;
  } else {
    rvy = 2;
  }
  if (leftkey == true) redX = redX - rvx;
  if (rightkey == true) redX = redX + rvx;
  if (upkey == true) redY = redY - rvy;
  if (downkey == true) redY = redY + rvy;
  //pause
  stroke(0);
  strokeWeight(2);
  fill(255);
  circle(100, 100, 100);
  strokeWeight(5);
  line(90, 70, 90, 125);
  line(110, 70, 110, 125);
  strokeWeight(0);
}
void gameClicks() {
  if (dist(mouseX, mouseY, 100, 100) < 50) {
    circle(100, 100, 100);
    fill(0);
    triangle(81, 73, 130, 98, 81, 123);
    mode = PAUSE;
  }
}
