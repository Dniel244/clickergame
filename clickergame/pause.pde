void pause () {
  background(grey);
  pauseTactile2();
  stroke(black);
  strokeWeight(5);
  fill(pausebgFill);
  square(10, 10, 75);
  strokeWeight(1);
  stroke(pauseFill);
  fill(pauseFill);
  rect(23, 17, 20, 60);
  rect(50, 17, 20, 60);
  
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
  textSize(40);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
  
  
  fill(black);
  textSize(80);
  text("paused", 400, 400);
  
  stroke(brown);
  strokeWeight(5);
  noFill();
  triangle(300, 500, 400, 600, 300, 700);
  stroke(lightBrown);
  line(300, 497, 300, 703);
  stroke(brown);
  line(450, 650, 480, 550);
  stroke(lightGrey);
  fill(lightGrey);
  triangle(477, 553, 481, 554, 480, 550);
  
}



void pauseClicks() {
   if (mouseX > 10 && mouseX < 85 && mouseY > 10 && mouseY < 85) {
    mode = GAME;
    song.play();
   }
   
   if (mouseX > 50 && mouseX < 150 && mouseY > 700 && mouseY < 750) {
     mode = INTRO;
     lives = 0;
     score = 0;
   }
  }
  
  void pauseTactile2() {
  if (mouseX > 10 && mouseX < 85 && mouseY > 10 && mouseY < 85) {
    pauseFill = white;
    pausebgFill = red;
  } else {
    pauseFill = red;
    pausebgFill = white;
  }
}
