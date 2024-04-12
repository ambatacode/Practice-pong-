abstract class Rect extends Shape {
  
  Rect(float x, float y, float w, float h, color c){
  super (x, y, w, h, c);
  }
  abstract void draw();
}
