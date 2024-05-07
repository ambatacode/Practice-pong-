class Lines extends Rectangle {
  //
  //
  Lines(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
    if (x == displayWidth*1/2) {
      this.x = x;
      this.y = TableY;
      this.w = 3;
      this.h = TableH;
      this.c = c;
    }
    if (x == LeftX) {
      this.x = x + LeftW;
      this.y = TableY;
      this.w = 3;
      this.h = TableH;
      this.c = c;
    }
    if (x ==RightX) {
      this.x = x;
      this.y = TableY;
      this.w = 3;
      this.h = TableH;
      this.c = c;
    }
  }
  void draw() {
    c = #FFFFFF;
    fill(c);
    rect(x, y, w, h);
    fill(0);
  }
  int TableH, TableY ;
  int LeftW,LeftX;
  int RightX;
  void UpdateLines(int TH, int TY, int LW, int LX, int RX) {
    TableH = TH;
    TableY = TY;
    //
    LeftX = LX;
    LeftW = LW;
    RightX = RX;
  }
}
