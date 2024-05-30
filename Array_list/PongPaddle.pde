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
    move();
    println(x);
  }
  void updateVariables(int TW, int TH, int TY, int PX1, int PY1, int PW1, int PH1, int PX2, int PY2, int PW2, int PH2 ) {}//end updateVariables
  void move() {
    if (up == true) {
      moveup();
    }
    if (down == true) {
      movedown();
    }
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
  void keypressed() {
    if (x < displayWidth *1/2) {
      if (key =='W'| key=='w') {
        up = true;
      }
      if (key =='S'| key=='s') {
        down = true;
      }
    } else {
      if (key =='O'| key=='o') {
        up = true;
      }
      if (key =='L'| key=='l') {
        down = true;
      }
    }
  }
  void keyreleased() {
    if (x < displayWidth *1/2) {
      if (key =='W'| key=='w') {
        up = false;
      }
      if (key =='S'| key=='s') {
        down = false;
      }
    } else {
      if (key =='O'| key=='o') {
        up = false;
      }
      if (key =='L'| key=='l') {
        down = false;
      }
    }
  }
}
