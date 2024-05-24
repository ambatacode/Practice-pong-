class Net extends Rectangle {
  //
  int NetWidth;
  //
  Net(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
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
  void Netintitialize() {
    if (x == 0) {
      this.x = x;
      this.y = TableY;
      this.w = displayWidth * 1/25;
      this.h = TableH;
      this.c = c;
    }
    if (x == 1) {
      this.x = displayWidth - displayWidth * 1/25;
      this.y = TableY;
      this.w = displayWidth * 1/25;
      this.h = TableH;
      this.c = c;
    }
  }
  void keypressed() {
  }
  void keyreleased() {
  }
}
