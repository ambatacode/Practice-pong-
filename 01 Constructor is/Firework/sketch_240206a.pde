//global variables
ball pongBall;
ball[] Fireworks = new ball[15];
ball Cheatball;
//

//
void setup() {
  fullScreen();
  // ball variables
  pongBall = new ball();
  for (int i=0; i< Fireworks.length; i++) {
    Fireworks[i] = new ball(displayWidth*-1, displayHeight*-1, 0.5);
  }
  Cheatball = new ball(displayWidth*-1, displayHeight*-1,0.0,0.0);
}
//garbage collection happens here
void draw () {
  background(#000000);
  pongBall.draw();

  println(pongBall.Xspeed, pongBall.Xspeed);
  for (int i=0; i< Fireworks.length; i++) {
    Fireworks[i].draw();
  }
  Cheatball.draw();
}
//
void keyPressed() {
}
//
void mousePressed() {
  for (int i=0; i< Fireworks.length; i++) {
    Fireworks[i] = new ball(mouseX, mouseY, 0.5);
  }
  Cheatball = new ball(mouseX, mouseY, pongBall.BALLD, pongBall.Ballcolour);
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
//
//End driver
