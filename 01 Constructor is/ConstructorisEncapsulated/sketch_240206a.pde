 //global variables

//
void setup(){
  fullScreen();
  //screensizechecker()
  ball pongBall = new ball();//lne = 1/2 of constructor
  int startX = displayWidth = 1/2;
  int startY = displayHeight = 1/2;
  int referentMesures = (displayWidth < displayHeight ) ? displayWidth : displayHeight ;
  pongBall.X = startX;
  pongBall.Y = startY;
  pongBall.BALLD = referentMesures * 1/20;
  pongBall.Ballcolour = color (random(0,255),random(0,255),random(0,255));
  //fill(pongBall.Ballcolour);
  //ellipse(X, Y, BALLD, BALLD);//balls\
  //fill(0);
}
//garbage collection happens here
void draw (){
  //empty loop
}
//
void keyPressed(){}
//
void mousePressed(){}
//
//End driver
