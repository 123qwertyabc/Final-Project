void game() {
  background(purple);
  fill(darkBeige);
  strokeWeight(10);
  circle(width/2, height/2, 550);
  strokeWeight(0);
  fill(beige);
  circle(width/2, height/2, 430);
  // blue spinner
  strokeWeight(10);
  fill(lightBlue);
  circle(blueX, blueY, bd);
  fill(blue);
  circle(blueX, blueY, 50);
  //red spinner
  fill(rose);
  circle(redX, redY, rd);
  fill(red);
  circle(redX, redY, 50);
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
  
}
void gameClicks() {
}
