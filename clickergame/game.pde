void game () {
  
  //visuals
  background(0, bg, bg);
  bg = map(suny, 151, 900, 255, 0);
    fill(yellow);
  stroke(yellow);
  circle(650, suny, 150);
  fill(white);
  stroke(white);
  cloud1();
  cloud2();

  
  suny = suny + sunyvy;
  
  
  if (suny > 900) {
   sunyvy = -0.1; 
  } else if (suny < 151) {
   sunyvy = 0.1; 
  } 
  fill(brown);
  stroke(brown);
  rect(0, 700, 800, 100);
  fill(green);
  stroke(green);
  rect(0, 675, 800, 25);
  
  //pause button
  pauseTactile();
  stroke(black);
  strokeWeight(5);
  fill(pausebgFill);
  square(10, 10, 75);
  strokeWeight(1);
  stroke(pauseFill);
  fill(pauseFill);
  rect(23, 17, 20, 60);
  rect(50, 17, 20, 60);
  
  //target
  if (classicb == true) {
    target(x, y, d);
  } else if (blueBlackb == true) {
    blueTarget(x, y, d);
    } else if (rainbowb == true) {
    rainbowTarget(x, y, d);
    } else if (zeldab == true) {
    triforce(x, y, d);
    } else if (valorantb == true) {
    valorant(x, y, d);
    } else if (ggb == true) {
    gg(x, y, d);
    }
  
  //moving
  x = x + vx;
  y = y + vy;
  
  //scores/lives
  fill(black);
  textSize(40);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
  
  
  
  //bouncing
  if (x < d-40 || x > width-(d-40)) {
    vx = vx * -1;
  }
  if (y < d-40 || y > height-(d+    90)) {
    vy = vy * -1;
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < 70) {
    score = score + 1;
    vx = vx * 1.05;
    if (score > currentHighscore); {
     currentHighscore = score; 
    }
    minim = new Minim(this);
    song = minim.loadFile("coin.mp3");
    song.rewind();
    song.play();
  } else if (mouseX > 10 && mouseX < 85 && mouseY > 10 && mouseY < 85) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    minim = new Minim(this);
    song = minim.loadFile("bump.mp3");
    song.rewind();
    song.play();
  }
    
    if (lives == 0) {
    mode = GAMEOVER;
     minim = new Minim(this);
    song = minim.loadFile("gameover.mp3");
    song.play();
    x = width/2;
    y = height/2;
  }
}

void cloud1() {
  circle(cloud1x, 200, 100);
  circle(cloud1x-50, 200, 100);
  circle(cloud1x+50, 200, 100);
  circle(cloud1x, 150, 100);
  
  cloud1x = cloud1x + 0.2;
  
   if (cloud1x > 900) {
    cloud1x = -200;
  }
  
}

void cloud2() {
  circle(cloud2x, 400, 100);
  circle(cloud2x-50, 400, 100);
  circle(cloud2x+50, 400, 100);
  circle(cloud2x, 350, 100);
  cloud2x = cloud2x + 0.2;
  
  if (cloud2x > 900) {
    cloud2x = -200;
  }
}



void pauseTactile() {
  if (mouseX > 10 && mouseX < 85 && mouseY > 10 && mouseY < 85) {
    pauseFill = red;
    pausebgFill = white;
  } else {
    pauseFill = white;
    pausebgFill = red;
  }
}
