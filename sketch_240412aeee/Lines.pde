class Lines extends Rectangle {
  //
  //
    Lines(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
    this.x = x;
    this.y = pongtablerect.y;
    this.w = 3;
    this.h = pongtablerect.h;
    this.c = c;
  }
  void draw(){
    c = #FFFFFF;
    fill(c);
    rect(x, y, w, h);
    fill(0);
  }
}
