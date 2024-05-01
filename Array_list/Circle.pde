abstract class Circle extends Shape{
  //
  float speedx;
  float speedy;
  //
  Circle(int x, int y, int w, int h, color c){
  super(x, y, w, h, c);
  }
  abstract void draw();
  //
  float Xdirection() {
    float Xdirection = int (random(-2, 2));
    while (Xdirection == 0) {
      Xdirection = int (random(-2, 2));//variable must be populated
    }
    return Xdirection;
  }
  float Ydirection() {
    float Ydirection = int (random(-2, 2));
    while (Ydirection == 0) {
      Ydirection = int (random(-2, 2));
    }
    return Ydirection;
  }
}
