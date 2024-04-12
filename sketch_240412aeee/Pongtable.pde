abstract class Pongtable extends Rect {
  float PongtableX, PongtableY, PongtableW, PongtableH;
  
  Pongtable (float x, float y, float w, float h, color c) {
    super (x, y, w, h, c);
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = (#000000);
  }
  void draw(){
    fill(c);
    rect(x, y, w, h);
    fill (0);
  }
}
