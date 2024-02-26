
class ball
{
  //global variables
  float X, Y, BALLD;
  color Ballcolour;
  float Xspeed, Yspeed;
  float Yspeedchange = 1.0, Xspeedchange = 1.0;
  float gravity=0.0;
  float explosiondirection;
  // static int count =28; // statoc number for the amount of ball instances
  //
  //ball Constructor
  ball () {
    //constructor is hard coded, single variable object
    //local variables, deleted at end of constructor
    int startX = displayWidth*1/2;
    int startY = displayHeight*1/2;
    int referentMesures = (displayWidth < displayHeight ) ? displayWidth : displayHeight ;
    //object variables
    this.X = startX;
    this.Y = startY;
    this.BALLD = referentMesures * 1/20;
    this.Ballcolour = color (#FFFFFF);
    this.Xspeed = Xdirection();
    this.Yspeed = Ydirection();
    this.Xspeedchange = 4;//change speed change
    this.Yspeedchange = 4;
  }//end ball constructor
  //
  ball (float X, float Y, Float gravityParamiter) {
    //ball();
    this.X = X; // trip error ball in goal
    this.Y = Y;
    this.Ballcolour = color (#FFFFFF);
    this.BALLD = random(displayWidth*1/30);
    this.Xspeed = random(-5, 5);
    this.Yspeed = random(-5, 5);
    gravity = gravityParamiter;
  }// end firework
  //
  // must look like ball
  ball (int XPARA, int YPARA, float DIAPARA, float COLORPARA) {
    this.X = XPARA;
    this.Y = YPARA;
    this.BALLD = DIAPARA;
    this.Ballcolour = color (random(0, 255), random(0, 255), random(0, 255));
    this.Xspeed = pongBall.Xspeed;
    this.Yspeed = pongBall.Yspeed;
    this.Xspeedchange = 2;//change speed change
    this.Yspeedchange = 2;
  }//end cheat ball
  //
  float Xdirection() {
    float Xdirection = int (random(-7, 7));
    while (Xdirection == 0) {
      Xdirection = int (random(-7, 7));//variable must be populated
    }
    return Xdirection;
  }
  float Ydirection() {
    float Ydirection = int (random(-7, 7));
    while (Ydirection == 0) {
      Ydirection = int (random(-7, 7));
    }
    return Ydirection;
  }

  void draw () {
    noStroke();
    fill(Ballcolour);
    ellipse(X, Y, BALLD, BALLD);//easteregg @ bounce diamater changes
    fill(0);
    step();
    stroke(#000000);
  }//end draw
  //
  void step() {
    bounce();
    Yspeed += gravity;
    X += Xspeed * Xspeedchange;
    Y += Yspeed * Yspeedchange;
  }//end step
  //
  void bounce() {
    //if (X < 0+BALLD*2/1) Ballcolour = color(#FF0000);
    //if (X > displayWidth-BALLD*2/1) Ballcolour = color (#00FF00);

    //if (X < 0+BALLD*1/2 || X > displayWidth-BALLD*1/2)  Xspeed *= -1;
    if (Y < 0+BALLD*1/2 || Y > displayHeight+BALLD*-1/2) Yspeed *= -1;
  }


}//end ball
//
