void shop() {
  background(green);
   //exit button
  fill(lightGrey);
  stroke(black);
  strokeWeight(5);
  if (mouseX > 50 && mouseX < 150 && mouseY > 700 && mouseY < 750) {
    exitx = 40;
    exity = 690;
    exitw = 120;
    exith = 70;
    exitText = 50;
  } else {
    exitx = 50;
    exity = 700;
    exitw = 100;
    exith = 50;
    exitText = 40;
  }
  rect(exitx, exity, exitw, exith);
  textSize(exitText);
  fill(black);
  text("Exit", 100, 720);
  
  fill(darkGreen);
  stroke(darkGreen);
  rect(dollarx-80, dollarx-50, 5, 85);
  rect(dollarx-65, dollarx-50, 5, 85);
  textSize(100);
  text("S"  , dollarx-70, dollary+550);
  fill(black);
  textSize(80);
  text("" +points, 730, 700);
  
  //targets
  stroke(black);
  noFill();
  square(100, 200, 150);
  square(350, 200, 150);
  square(600, 200, 150);
  square(100, 450, 150);
  square(350, 450, 150);
  square(600, 450, 150);
  
  target(175, 275, 100);
  blueTarget(425, 275, 100);
  rainbowTarget(675, 275, 100);
  zelda(175, 530, 100);
  
  fill(black);
  textSize(30);
  text("classic:   0", 175, 150);
  text("Blue:   50", 425, 150);
  text("Rainbow:   150", 675, 150);
  
  
  fill(darkGreen);
  stroke(darkGreen);
  
  dollarx = 220;
  dollary = 145;
  rect(dollarx-7, dollary-15, 1, 45);
  rect(dollarx+5, dollary-15, 1, 45);
  textSize(60);
  text("S", dollarx, dollary);
  
  dollarx = 440;
  dollary = 145;
  rect(dollarx-7, dollary-15, 1, 45);
  rect(dollarx+5, dollary-15, 1, 45);
  textSize(60);
  text("S", dollarx, dollary);
  
  dollarx = 715;
  dollary = 145;
  rect(dollarx-7, dollary-15, 1, 45);
  rect(dollarx+5, dollary-15, 1, 45);
  textSize(60);
  text("S", dollarx, dollary);
  
  
  
}

void shopClicks() {
  //exit button
   if (mouseX > 50 && mouseX < 150 && mouseY > 700 && mouseY < 750) {
     mode = INTRO;
     lives = 0;
     score = 0;
   }
}

void blueTarget(float x, float y, float d) {
fill(darkBlue);
  stroke(darkBlue);
  circle(x, y, d+20);
  fill(black);
  stroke(black);
  circle(x, y, d);
  fill(darkBlue);
  stroke(darkBlue);
  circle(x, y, d-20);
  fill(black);
  stroke(black);
  circle(x, y, d-50);
  fill(darkBlue);
  stroke(darkBlue);
  circle(x, y, d-70);
}

void rainbowTarget(float x, float y, float d) {
fill(red);
  stroke(red);
  circle(x, y, d+20);
  fill(orange);
  stroke(orange);
  circle(x, y, d);
  fill(yellow);
  stroke(yellow);
  circle(x, y, d-20);
  fill(green);
  stroke(green);
  circle(x, y, d-50);
  fill(darkBlue);
  stroke(darkBlue);
  circle(x, y, d-70);
}

void zelda(float x, float y, float d) {
fill(darkGreen);
  stroke(darkGreen);
  circle(x, y, d+20);
  fill(yellow);
  stroke(yellow);
  triangle(x-25, y+20, x-15, y, x-5, y+20);
  triangle(x+3, y+20, x+13, y, x+23, y+20);
  triangle(x-15, y, x+13, y, x+5, y-20);
}
