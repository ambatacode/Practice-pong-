//

class Menu extends Display {
  Menu(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
  }
  void draw () {
    if (menuon)drawing();
  }//end draw
  void drawing() {
    if (randomnumber > 1 && randomnumber < 190) {
      if (x == width/2 - (width*8/15*1/2))Heathcliff("Pong");
    }
    if (randomnumber > 191 && randomnumber < 200) {
      if (x == width/2 - (width*8/15*1/2))Heathcliff("PonG");
    }
  }
  void text() {
  }
  void updateVariables(int TY, int TH, int LLX, int LLR, int BX, int PW1, int PH1, int PX2, int PY2, int PW2, int PH2 ) {
  }//end updateVariables
  int TableY, tableH, LineLX, LineRX, BallX;
  void keypressed() {
  }
  void keyreleased() {
  }
  void mousepressed() {
  }

  void Heathcliff(String wutharingheights) {
    drawText( height, #00ff44, CENTER, CENTER, Font, textSpace+textSpace+wutharingheights+textSpace+textSpace, x, y, w, h);
  }
}
