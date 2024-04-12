abstract class Shape {
  Float x;
  Float y;
  Float w;
  Float h;
  color c;
  //variables
  Shape (float x, float y, float w, float h, color c){
  this.x = x;
  this.y = y;
  this.w = w;
  this.h = h;
  this.c = c;
  }
  abstract void draw();
}
