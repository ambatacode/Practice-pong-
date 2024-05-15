class Lines extends Rectangle {
  //
  //
  Lines(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
  }
  void draw() {
    c = #FFFFFF;
    fill(c);
    rect(x, y, w, h);
    fill(0);
  }
  int TableH, TableY ;
  int LeftW, LeftX;
  int RightX;
  void UpdateLines(int TH, int TY, int LW, int LX, int RX) {
    TableH = TH;
    TableY = TY;
    //
    LeftX = LX;
    LeftW = LW;
    RightX = RX;
  }
  void LinesInitialize() {
    if (x == displayWidth*1/2) {
      this.x = x;
      this.y = displayHeight * 1/10;
      this.w = 3;
      this.h = displayHeight * 8/10;
      this.c = c;
    }
    if (x == 0) {
      this.x = 0 + displayWidth * 1/25;
      this.y = displayHeight * 1/10;
      this.w = 3;
      this.h = displayHeight * 8/10;
      this.c = c;
    }
    if (x == 1) {
      this.x = displayWidth - displayWidth * 1/25;
      this.y = displayHeight * 1/10;
      this.w = 3;
      this.h = displayHeight * 8/10;
      this.c = c;
    }
  }
}
