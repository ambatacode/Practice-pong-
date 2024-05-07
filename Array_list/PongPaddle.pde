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
    paddleHeight = TableH * 1/4;
    PaddleWidth = (displayHeight * 1/20) * 1/3;
    paddleTravel = 10;
    if (x == LLeftX) {
      this.x = x;
      this.y = (TableY) + (TableH * 1/2) - (paddleHeight * 1/2) ;
      this.w = PaddleWidth;
      this.h = paddleHeight;
      this.c = c;
    }
    if (x == LRightX) {
      this.x = x - PaddleWidth ;
      this.y = (TableY) + (TableH * 1/2) - (paddleHeight * 1/2) ;
      this.w = PaddleWidth;
      this.h = paddleHeight;
      this.c = c;
    }
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
  //
  void BooleanPathP1() {
    if (key =='W'| key=='w') P1Paddle.up = true;
    if (key =='S'| key=='s') P1Paddle.down = true;
  }
  void BooleanReleaseP1(){
    if (key =='W'| key=='w') P1Paddle.up = false;
    if (key =='S'| key=='s') P1Paddle.down = false;
  }
  //
  //
   void BooleanPathP2() {
    if (key =='O'| key=='o') P2Paddle.up = true;
    if (key =='L'| key=='l') P2Paddle.down = true;
  }
  void BooleanReleaseP2(){
    if (key =='O'| key=='o') P2Paddle.up = false;
    if (key =='L'| key=='l') P2Paddle.down = false;
  }
  //
  void moveup() {
    y -= paddleTravel;
    if (y < TableY) y = TableY;
  }
  void movedown() {
    y += paddleTravel;
    if (y > TableY + TableH - paddleHeight) y = TableY + TableH - paddleHeight;
  }
  int TableX,TableY,TableW,TableH;
  int LLeftX, LRightX;
  void UpdatePaddle(int TX, int TY, int TW, int TH, int LLX, int LRX){
    TableX = TX;
    TableY = TY;
    TableW = TW;
    TableH = TH;
    //
    LLeftX = LLX;
    LRightX = LRX;
  }
}
