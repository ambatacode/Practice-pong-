
class ball
{
  //global variables
  float X, Y, BALLD;
  color Ballcolour;
  float Xspeed,Yspeed;
  float Xdirection, Ydirection;
  //
  //Constructor
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
    this.Ballcolour = color (random(0,255),random(0,255),random(0,255));
    this.Xspeed = Xdirection();
    this.Yspeed = Ydirection();
    this.Xdirection = 7;//change speed change
    this.Ydirection = 7;
    
  }//end constructor
  //
  
  float Xdirection() {
    float Xdirection = int (random(-7,7));
    while(Xdirection == 0){
      Xdirection = int (random(-7,7));//variable must be populated
    }
    return Xdirection;
  }
    float Ydirection() {
      float Ydirection = int (random(-2,2));
      while (Ydirection == 0){
        Ydirection = int (random(-2,2));
      }
      return Ydirection;
    }
    
  void draw () {
      fill(Ballcolour);
      ellipse(X, Y, BALLD, BALLD);//easteregg @ bounce diamater changes
      fill(0);
      step();
  }//end draw
  //
  void step() {
    bounce();
    X += Xspeed * Xdirection;
    Y += Yspeed * Xdirection;
  }//end step
  //
  void bounce() {
    if (X < 0+BALLD*1/2 || X > displayWidth-BALLD*1/2) Xspeed *= -1;
    if (Y < 0+BALLD*1/2 || Y > displayHeight-BALLD*1/2) Yspeed *= -1;
    //
    if (X < 0+BALLD*1/2 || X > displayWidth-BALLD*1/2)Ballcolour = color (random(0,255),random(0,255),random(0,255));
    if (Y < 0+BALLD*1/2 || Y > displayHeight-BALLD*1/2)Ballcolour = color (random(0,255),random(0,255),random(0,255));
  }//end bounce 

}//end ball
//
 
  
