int scoreleft = 0;
int scoreright = 0;
//
class Scoreboard extends Display {
  Scoreboard(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
  }
  void draw () {
    if (pongon)drawing();
      if (menuon){
      scoreleft = 0;
      scoreright = 0;
    }
  }//end draw
  void drawing() {
    if (x == LineLX) Alexander(str(scoreleft));
    if (x == LineRX - displayWidth* 3/7) Alexander(str(scoreright));
    wincondition();
  }
  void text() {
  }
  void updateVariables(int TY, int TH, int LLX, int LLR, int BX, int BR, int PH1, int PX2, int PY2, int PW2, int PH2 ) {
    TableY = TY ;
    tableH = TH ;
    LineLX = LLX ;
    LineRX = LLR ;
    BallX = BX;
    ballR = BR;
  }//end updateVariables
  int TableY, tableH, LineLX, LineRX, BallX, ballR;
  void initializescore() {
    if (x == 0) {
      this.x = LineLX;
      this.y = TableY;
      this.w = displayWidth* 3/7;
      this.h = tableH;
      this.c = 0;
    }
    if (x == 1) {
      this.x = LineRX - displayWidth* 3/7;
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
  void Alexander(String Leftscore) {
    drawText( height, ink, CENTER, CENTER, Font, textSpace+textSpace+Leftscore+textSpace+textSpace, x, y, w, h);
  }
  void wincondition() {
    if (BallX < 0) {
      scoreleft ++;
      shapes.get(8).x = width/2 - displayHeight/25*1/2;
      shapes.get(8).y = height/2 - displayHeight/25*1/2;
      pause = true;
    }
    if (BallX > displayWidth) {
      scoreright ++;
      shapes.get(8).x = width/2 - displayHeight/25*1/2;
      shapes.get(8).y = height/2 - displayHeight/25*1/2;
      pause = true;
    }
  }
  void mousepressed() {
  }
}
