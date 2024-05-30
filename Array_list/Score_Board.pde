class Scoreboard extends Display {
  Scoreboard(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
  }
  void draw () {
    c = (#FFFFFF);
    fill(c);
    rect(x, y, w, h);
    if (x == 0){ Alexander("0`");}
    fill(0);
  }
  void text() {
  }
  void updateVariables(int TW, int TH, int TY, int PX1, int PY1, int PW1, int PH1, int PX2, int PY2, int PW2, int PH2 ) {}//end updateVariables
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
      this.c = 0;
    }
    if (x == 1) {
      this.x = LineRX - w;
      this.y = TableY;
      this.w = displayWidth* 3/7;
      this.h = tableH;
      this.c = 0;
    }
  }
    void keypressed() {
  }
  void keyreleased() {
  }
  void Alexander(String Leftscore){
    drawText( height, ink, CENTER, CENTER, Font, textSpace+Leftscore+textSpace, x, y, w, h);
  }
}
