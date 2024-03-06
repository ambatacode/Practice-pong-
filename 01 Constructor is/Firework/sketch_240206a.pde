//global variables

boolean newgame = true;
boolean gamestart = false;
boolean eventselector = false;
float EVENTCHOOSER = 0;
 
ball pongBall;
ball[] Fireworks = new ball[50];
ball Cheatball;
ball coin;
paddle mypaddle, savagepaddle;
//

//
void setup() {
  fullScreen();
  // ball variables
  pongBall = new ball();
  for (int i=0; i< Fireworks.length; i++) {
    Fireworks[i] = new ball(displayWidth*-1, displayHeight*-1, 0.5);
  }
  Cheatball = new ball(displayWidth*-1, displayHeight*-1, 0.0, 0.0);  
  
  mypaddle = new paddle(0, pongBall.BALLD);
  savagepaddle =new paddle(displayWidth, pongBall.BALLD);
}
//garbage collection happens here
void draw () {
  background(#000000);
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
}
//
void mousePressed() {
  if (newgame == true) {
    newgame = false;
  } else if (newgame == false) {
    newgame = true;
  }

  if (mousePressed && (mouseButton == LEFT))Cheatball = new ball(mouseX, mouseY, pongBall.BALLD, pongBall.Ballcolour);
}
//
void ballcollisions() {
  /*
  if (X < 0+BALLD*1/2 || X > displayWidth-BALLD*1/2) Xspeed *= -1;
   if (Y < 0+BALLD*1/2 || Y > displayHeight-BALLD*1/2) Yspeed *= -1;
   //
   if (X < 0+BALLD*1/2 || X > displayWidth-BALLD*1/2)Ballcolour = color (random(0,255),random(0,255),random(0,255));
   if (Y < 0+BALLD*1/2 || Y > displayHeight-BALLD*1/2)Ballcolour = color (random(0,255),random(0,255),random(0,255));
   */
}
void HUD() {
  
}// end HUD
//
//End driver
