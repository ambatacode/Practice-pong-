//global variables

boolean newgame = true;
boolean gamestart = false;
boolean eventselector = false;
float EVENTCHOOSER = 0;
boolean up=false, down=false;
Ball pongBall;
Ball [] Fireworks = new Ball[50];
Ball Cheatball;
Ball coin;
paddle mypaddle, savagepaddle;
pongtable pongtable;
//

//
void setup() {
  fullScreen();
  // ball variables
  pongBall = new Ball();
  for (int i=0; i< Fireworks.length; i++) {
    Fireworks[i] = new Ball(displayWidth*-1, displayHeight*-1, 0.5);
  }
  Cheatball = new Ball(displayWidth*-1, displayHeight*-1, 0.0, 0.0);
  pongtable = new pongtable();

  mypaddle = new paddle(0, pongBall.BALLD);
  savagepaddle =new paddle(displayWidth, pongBall.BALLD);
}
//garbage collection happens here
void draw () {
  background(#FFFFFF);
  pongtable.draw();
  textdrw();
  hudrect();
  mypaddle.draw();
  savagepaddle.draw();
  
  if (newgame == false)pongBall.draw();
  if (newgame == true) pongBall.X = displayWidth *1/2;
  if (newgame == true) pongBall.Y = displayHeight *1/2;
  randomevent();
  noStroke();
  fill(#FFFFFF);
  rect((displayWidth * 1/2 - 10), 0.1, 20, displayHeight);
  noFill();
  stroke(#000000);
  println(newgame, EVENTCHOOSER);

  if (pongBall.X < displayWidth*1/20 && pongBall.X > displayWidth*0.1/20||pongBall.X < displayWidth*20/20 && pongBall.X > displayWidth*19.7/20 ) {
    netexpo(pongBall.X, pongBall.Y);
  }
  Cheatball.draw();
  for (int i=0; i< Fireworks.length; i++) {
    Fireworks[i].draw();
  }
  if (Cheatball.X < displayWidth*1/20 && Cheatball.X > displayWidth*0.1/20||Cheatball.X < displayWidth*20/20 && Cheatball.X > displayWidth*19.7/20 ) {
    netexpo(Cheatball.X, Cheatball.Y);
  }
  Cheatball.draw();
  for (int i=0; i< Fireworks.length; i++) {
    Fireworks[i].draw();
  }
}

//
void keyPressed() {
  mypaddle.wspress();
  savagepaddle.keypressedOL();
}
void keyReleased() {
  mypaddle.wspressrel();
  savagepaddle.keypressedOLrel();
}

//
void mousePressed() {
  if (newgame == true) {
    newgame = false;
  } else if (newgame == false) {
    newgame = true;
  }

  if (mousePressed && (mouseButton == LEFT))Cheatball = new Ball(mouseX, mouseY, pongBall.BALLD, pongBall.Ballcolour);
}
//

void HUD() {
}// end HUD
//
//End driver
