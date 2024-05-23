class Paddle extends Rectangle {
  //
  int paddleHeight;
  int PaddleWidth;
  int paddleTravel;
  boolean up = false;
  boolean down = false;
  //
  Paddle(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
  }

  void draw() {
    c = (#FFFFFF);
    fill(c);
    rect(x, y, w, h);
    fill(0);
    if (up == true) {
      moveup();
    }
    if (down == true) {
      movedown();
    }
  }

  void keypressed() {
    if (){
    }
  }
  void keyreleased() {
    
  }
  void moveup() {
    y -= paddleTravel;
    if (y < displayHeight * 1/10) y = TableY;
  }
  void movedown() {
    y += paddleTravel;
    if (y > displayHeight * 1/10 + displayHeight * 8/10 - paddleHeight) y = displayHeight * 1/10 + displayHeight * 8/10 - paddleHeight;
  }
  int TableX, TableY, TableW, TableH;
  int LLeftX, LRightX;
  void UpdatePaddle(int TX, int TY, int TW, int TH, int LLX, int LRX) {
    TableX = TX;
    TableY = TY;
    TableW = TW;
    TableH = TH;
    //
    LLeftX = LLX;
    LRightX = LRX;
  }
  void initializePaddle() {
    paddleHeight = displayHeight * 8/10 * 1/4;
    PaddleWidth = (displayHeight * 1/20) * 1/3;
    paddleTravel = 10;
    if (x == 0) {
      this.x = x + LLeftX;
      this.y = (TableY) + (TableH * 1/2) - (paddleHeight * 1/2) ;
      this.w = PaddleWidth;
      this.h = paddleHeight;
      this.c = c;
    }
    if (x == 1) {
      this.x = (LRightX) - PaddleWidth ;
      this.y = (TableY) + (TableH * 1/2) - (paddleHeight * 1/2) ;
      this.w = PaddleWidth;
      this.h = paddleHeight;
      this.c = c;
    }
  }
}
