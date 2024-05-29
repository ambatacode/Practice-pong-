abstract class Rectangle extends Shape {
  //Global Variables
  //
  Rectangle(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
  }
  //
  //Methods
  abstract void draw();
  abstract void updateVariables(int TW, int TH, int TY, int PX1, int PY1, int PW1, int PH1, int PX2, int PY2, int PW2, int PH2 );
} //End Rectangle
