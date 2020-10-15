void gameover() {

 

  background(red);
  gameoverTarget();
  textSize(60);
  fill(black);
  text("Gameover", 400, 600);
  fill(black);
  textSize(40);
  text("Score: " + score, width/1.3, 50);
  text("Session Highscore: " + currentHighscore, 400, 700);
}

void gameoverClicks() {
  if (mouseX > 310 && mouseX < 490 && mouseY > 300 && mouseY < 490) {
    points = score + points;
    mode = INTRO;
    vx = 5;
    vy = 5;
    suny = 150;
  }
}

void gameoverTarget() {
  strokeWeight(5);
  stroke(gameoverStroke);
  line(x-20, y, x-20, -1000);
  line(x+20, y, x+20, -1000);
  gameoverTactile();
  stroke(gameoverStroke);
  fill(red);
  circle(x, y, d+70);
  strokeWeight(1);
  fill(white);
  stroke(white);
  circle(x, y, d+50);
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

void gameoverTactile() {
  if (mouseX > 310 && mouseX < 490 && mouseY > 300 && mouseY < 490) {
  gameoverStroke = white;
  } else {
    gameoverStroke = black;
  }
}
