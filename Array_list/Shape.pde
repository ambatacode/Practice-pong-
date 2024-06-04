abstract class Shape {
  //Global Variables
  int x; //X-Variable, Position
  int y; //Y-Variable, Position
  int w; //Width
  int h; //Height
  color c; //Colour based on Night Mode
  //
  //Constructor
  Shape(int x, int y, int w, int h, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
  } //End Constructor
  //
  //Methods
  abstract void draw(); //Empty draw()
  abstract void keypressed();
  abstract void keyreleased();
  abstract void mousepressed();
  abstract void updateVariables(int TW, int TH, int TY, int PX1, int PY1, int PW1, int PH1, int PX2, int PY2, int PW2, int PH2 );
} //End Shape
