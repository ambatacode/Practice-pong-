 //global variables
 ball pongBall;

//
void setup(){
  fullScreen();
  // ball variables
  pongBall = new ball();
  //
}
//garbage collection happens here
void draw (){
  pongBall.draw();
  pongBall.step();
  //empty loop
}
//
void keyPressed(){}
//
void mousePressed(){}
//
//End driver
