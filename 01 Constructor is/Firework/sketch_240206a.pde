//global variables
ball pongBall;
ball[] Fireworks = new ball[50];
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
  Cheatball = new ball(displayWidth*-1, displayHeight*-1, 0.0, 0.0);
}
//garbage collection happens here
void draw () {
  background(#000000);
  pongBall.draw();

  println(pongBall.Xspeed, pongBall.Xspeed);
  /* if (pongBall.X>(2*pongBall.BALLD)&&(X > 0+pongBall.BALLD*3/1)|| pongBall.X>(displayWidth - 2*pongBall.BALLD) ) {
   netexpo(pongBall.X,pongBall.Y);
   */
  if (pongBall.X < displayWidth*1/20 && pongBall.X > displayWidth*0.1/20||pongBall.X < displayWidth*20/20 && pongBall.X > displayWidth*19.7/20 ) {
    netexpo(pongBall.X, pongBall.Y);
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
