abstract class Circle extends Shape{
  //
  float speedx;
  float speedy;
  //
  Circle(int x, int y, int w, int h, color c){
  super(x, y, w, h, c);
  }
  abstract void draw();
  abstract void updateVariables(int TW, int TH, int TY, int PX1, int PY1, int PW1, int PH1, int PX2, int PY2, int PW2, int PH2 );
  //
  float Xdirection() {
    float Xdirection = int (random(-3, 3));
    while (Xdirection == 0) {
      Xdirection = int (random(-3, 3));//variable must be populated
    }
    return Xdirection;
  }
  float Ydirection() {
    float Ydirection = int (random(-3, 3));
    while (Ydirection == 0) {
      Ydirection = int (random(-3, 3));
    }
    return Ydirection;
  }
  
}
