class Net extends Rectangle {
  //
  int NetWidth;
  //
  Net(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
    this.NetWidth = displayWidth * 1/25;
    if (x == 0) {
      this.x = x;
      this.y = pongtablerect.y;
      this.w = NetWidth;
      this.h = pongtablerect.h;
      this.c = c;
    }
    if (x == displayWidth) {
      this.x = x - NetWidth ;
      this.y = pongtablerect.y;
      this.w = NetWidth;
      this.h = pongtablerect.h;
      this.c = c;
    }
  }
  void draw() {
    c = (#FFFFFF);
    fill(c);
    rect(x, y, w, h);
    fill(0);
  }
}
