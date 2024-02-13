 //global variables
 ball pongBall;
 ball liquidBall;
//
void setup(){
  fullScreen();
  // ball variables
  pongBall = new ball();
  liquidBall = new ball();
  //
}
//garbage collection happens here
void draw (){
    background(#000000);
  pongBall.draw();
  liquidBall.draw();
  pongBall.step();
  println(pongBall.Xspeed, pongBall.Xspeed);
  //empty loop
}
//
void keyPressed(){}
//
void mousePressed(){}
//
void ballcollisions(){
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
