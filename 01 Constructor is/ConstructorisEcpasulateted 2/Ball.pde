
class ball
{
  //global variables
  float X, Y, BALLD;
  color Ballcolour;
  float Xspeed,Yspeed;
  float Xdirection, ydirection;
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
    Xspeed = displayWidth/displayWidth *9;
    Yspeed = displayHeight/displayHeight*9;
    Xdirection = -1;
    ydirection = -1;
  }//end constructor
  //
  void draw () {
      fill(Ballcolour);
      ellipse(X, Y, BALLD, BALLD);
      fill(0);
      step();
  }//end draw
  //
  void step() {
     bounce();
    X += Xspeed;
    Y += Yspeed;
  }//end step
  //
  void bounce() {
    if (X < 0+BALLD*1/2 || X > displayWidth-BALLD*1/2) Xspeed *= Xdirection;
    if (Y < 0+BALLD || Y > displayHeight-BALLD*1/2) Yspeed *= ydirection;
  }//end bounce 

}//end ball
//
 
  
