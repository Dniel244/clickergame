void intro () {
  background(0, 255, 255);
  fill(255, 0, 0);
  stroke(255, 0, 0);
  circle(400, 400, 750);
  fill(255);
  stroke(255);
  circle(400, 400, 600);
  fill(255, 0, 0);
  stroke(255, 0, 0);
  circle(400, 400, 400);
  fill(255);
  stroke(255);
  circle(400, 400, 200);
  fill(255, 0, 0);
  stroke(255, 0, 0);
  circle(400, 400, 100);
  
  introTactile();
  fill(white);
  stroke(black);
  textSize(startSize);
  text("Start", 400, 530);
  
  fill(darkGreen);
  if (mouseX > 75 && mouseX < 120 && mouseY > 670 && mouseY < 755) {
   fill(white);
   stroke(white);
  } else {
  fill(darkGreen);
  stroke(darkGreen);
  }
  rect(90, 670, 5, 85);
  rect(105, 670, 5, 85);
  textSize(100);
  text("S", 100, 700);
  
  
}

void introClicks() {
 if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
   mode = GAME;
   lives = 3;
   score = 0;
 } 
 
 if (mouseX > 75 && mouseX < 120 && mouseY > 670 && mouseY < 755) {
   mode = SHOP;
   
}
}

void introTactile() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    startSize = 70;
  } else {
    startSize = 60;
  }
}
