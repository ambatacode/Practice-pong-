class Net extends Rectangle {
  //
  int NetWidth;
  //
  Net(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
    if (x == 0) {
      this.x = x;
      this.y = displayHeight * 1/10;
      this.w = displayWidth * 1/25;
      this.h = displayHeight * 8/10;
      this.c = c;
    }
    if (x == 1) {
      this.x = displayWidth - displayWidth * 1/25;
      this.y = displayHeight * 1/10;
      this.w = displayWidth * 1/25;
      this.h = displayHeight * 8/10;
      this.c = c;
    }
  }
  void draw() {
    c = (#FFFFFF);
    fill(c);
    rect(x, y, w, h);
    fill(0);
  }
  int TableH, TableY ;
  void UpdateNets(int TH, int TY) {
    TableH = TH;
    TableY = TY;
  }
}
