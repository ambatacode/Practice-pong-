class ball
{
  //global variables
  float X, Y, BALLD;
  color Ballcolour;
  float Xspeed,Yspeed;
  int Xdirection, ydirection;
  //
  //Constructor
  ball () {
    //constructor is hard coded, single variable object
    //local variables, deleted at end of constructor
    int startX = displayWidth*1/2;
    int startY = displayHeight*1/2;
    int referentMesures = (displayWidth < displayHeight ) ? displayWidth : displayHeight ;
    //object variables
    X = startX;
    Y = startY;
    BALLD = referentMesures * 1/20;
    Ballcolour = color (random(0,255),random(0,255),random(0,255));
    Xspeed = displayWidth/displayWidth;
    Yspeed = displayHeight/displayHeight;
    Xdirection = -1;
    ydirection = -1;
  }//end constructor
  //
  void draw () {
      fill(Ballcolour);
      ellipse(X, Y, BALLD, BALLD);
      fill(0);
  }//end draw
  //
  void step() {
    X += Xspeed;
    Y += Yspeed;
  }//end step
  void bounce() {
    if () {
      Xspeed *= -1*Xdirection;
    }
    if () {
      Yspeed *= -1*ydirection;
    }
  }//end bounce 
}//end ball
//
 
  
