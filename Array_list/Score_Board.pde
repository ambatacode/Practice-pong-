class Scoreboard extends Display {
  Scoreboard(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
  }
  void draw () {
    c = (#FFFFFF);
    fill(c);
    rect(x, y, w, h);
    fill(0);
  }
  void text() {
  }
  int TableY, tableH, LineLX, LineRX;
  void updateSB( int TY, int TH, int LLX, int LLR) {
    TableY = TY ;
    tableH = TH ;
    LineLX = LLX ;
    LineRX = LLR ;
  }
  void initializescore(){
        if (x == 0) {
      this.x = LineLX;
      this.y = TableY;
      this.w = displayWidth* 3/7;
      this.h = tableH;
      this.c = c;
    }
    if (x == 1) {
      this.x = LineRX - w;
      this.y = TableY;
      this.w = displayWidth* 3/7;
      this.h = tableH;
      this.c = c;
    }
  }
}
