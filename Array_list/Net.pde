class Net extends Rectangle {
  //
  int NetWidth;
  //
  Net(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
  }
  void draw() {
    if (pongon)drawing();
  }
  void drawing() {
  }
  void updateVariables(int TW, int TH, int TY, int PX1, int PY1, int PW1, int PH1, int PX2, int PY2, int PW2, int PH2 ) {
  }//end updateVariables
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
  void mousepressed() {
  }
}
