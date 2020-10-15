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
  
  
  fill(black);
  textSize(80);
  text("" +points, 700, 700);
  
  //targets
  
  noFill();
  stroke(strokeColor1);
  square(100, 200, 150);
  stroke(strokeColor2);
  square(350, 200, 150);
  stroke(strokeColor3);
  square(600, 200, 150);
  stroke(strokeColor4);
  square(100, 450, 150);
  stroke(strokeColor5);
  square(350, 450, 150);
  stroke(strokeColor6);
  square(600, 450, 150);
  
  if (classicb == false) {
    if (mouseX > 100 && mouseX < 250 && mouseY > 200 && mouseY < 350) {  
  strokeColor1 = red; 
} else {
    strokeColor1 = black;
  }
  }else { 
    strokeColor1 = red;
  }
  
  if (blueBlackb == false) {
  if (mouseX > 350 && mouseX < 500 && mouseY > 200 && mouseY < 350) {
  strokeColor2 = red; 
} else {
  strokeColor2 = black;
}
} else {
  strokeColor2 = red;
}

  if (rainbowb == false) {
if (mouseX > 600 && mouseX < 750 && mouseY > 200 && mouseY < 350) {
  strokeColor3 = red;
} else {
  strokeColor3 = black;
}
  } else {
    strokeColor3 = red;
  }
  
  if (zeldab == false) {
  if (mouseX > 100 && mouseX < 250 && mouseY > 450 && mouseY < 600) {
  strokeColor4 = red;
  } else {
    strokeColor4 = black;
  }
  }else {
    strokeColor4 = red;
  }
  
  if (valorantb == false) {
  if (mouseX > 350 && mouseX < 500 && mouseY > 450 && mouseY < 600) {
  strokeColor5 = red;
  } else {
    strokeColor5 = black;
  }
  } else {
    strokeColor5 = red;
  }
  
  if (ggb == false) {
  if (mouseX > 600 && mouseX < 750 && mouseY > 450 && mouseY < 600) {
  strokeColor6 = red;
  } else {
    strokeColor6 = black;
  }
  } else {
    strokeColor6 = red;
  }

  
  target(175, 275, 100);
  blueTarget(425, 275, 100);
  rainbowTarget(675, 275, 100);
  triforce(175, 525, 100);
  valorant(425, 525, 100);
  gg(675, 525, 100);
  
  fill(black);
  textSize(30);
  text("classic:   0", 175, 150);
  text("Blue:   50", 425, 150);
  text("Rainbow:   150", 675, 150);
  text("Triforce:   250", 175, 400);
  text("Valorant:   500", 425, 400);
  text("GG:   9999", 675, 400);
  
  
  
  
  
}

void shopClicks() {
  //exit button
   if (mouseX > 50 && mouseX < 150 && mouseY > 700 && mouseY < 750) {
     mode = INTRO;
     lives = 0;
     score = 0;
   }
   if (mouseX > 100 && mouseX < 250 && mouseY > 200 && mouseY < 350) { 
    if (classicb == false ) {
  classicb = true;
  blueBlackb = false;
  rainbowb = false;
  zeldab = false;
  valorantb = false;
  ggb = false;
     } else {
       classicb = false;
     }
} else if (mouseX > 350 && mouseX < 500 && mouseY > 200 && mouseY < 350) {
  if (blueBlackb == false && points > 49) {
  blueBlackb = true;
  classicb = false;
  rainbowb = false;
  zeldab = false;
  valorantb = false;
  ggb = false;
  } else {
    blueBlackb = false;
  }
} else if (mouseX > 600 && mouseX < 750 && mouseY > 200 && mouseY < 350) {
 if (rainbowb == false && points > 149) {
  rainbowb = true;
  classicb = false;
  blueBlackb = false;
  zeldab = false;
  valorantb = false;
  ggb = false;
  } else {
    rainbowb = false;
  }
} else if (mouseX > 100 && mouseX < 250 && mouseY > 450 && mouseY < 600) {
  if (zeldab == false && points > 249) {
  zeldab = true;
  classicb = false;
  blueBlackb = false;
  rainbowb = false;
  valorantb = false;
  ggb = false;
  } else {
    zeldab = false;
  }
} else if (mouseX > 350 && mouseX < 500 && mouseY > 450 && mouseY < 600) {
  if (valorantb == false && points > 499) {
  valorantb = true;
  classicb = false;
  blueBlackb = false;
  rainbowb = false;
  zeldab = false;
  ggb = false;
  } else {
    valorantb = false;
  }
} else if (mouseX > 600 && mouseX < 750 && mouseY > 450 && mouseY < 600) {
  if (ggb == false && points > 9998) {
  ggb = true;
  classicb = false;
  blueBlackb = false;
  rainbowb = false;
  zeldab = false;
  valorantb = false;
  } else {
    ggb = false;
  }
} 
}

   
   



void target(float x, float y, float d) {
  fill(red);
  stroke(red);
  circle(x, y, d+20);
  fill(white);
  stroke(white);
  circle(x, y, d);
  fill(red);
  stroke(red);
  circle(x, y, d-20);
  fill(white);
  stroke(white);
  circle(x, y, d-50);
  fill(red);
  stroke(red);
  circle(x, y, d-70);
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

void triforce(float x, float y, float d) {
fill(darkGreen);
  stroke(darkGreen);
  circle(x, y, d+20);
  fill(yellow);
  stroke(yellow);
  triangle(x-23, y+20, x-13, y, x-3, y+20);
  triangle(x+5, y+20, x+15, y, x+25, y+20);
  triangle(x-9, y-7, x+1, y-25, x+11, y-7);
}

void valorant(float x, float y, float d) {
  fill(black);
  stroke(pink);
  circle(x, y, d+20);
  fill(pink);
  textSize(80);
  text("V", x, y-5);
}

void gg(float x, float y, float d) {
  fill(blue);
  stroke(black);
  circle(x, y, d+20);
  fill(black);
  textSize(60);
  text("GG", x, y-5);
}
