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
    paddleHeight = pongtablerect.h * 1/4;
    PaddleWidth = Playball.BallRadius * 1/3;
    paddleTravel = 10;
    if (x == LLeft.x) {
      this.x = x;
      this.y = (pongtablerect.y) + (pongtablerect.h * 1/2) - (paddleHeight * 1/2) ;
      this.w = PaddleWidth;
      this.h = paddleHeight;
      this.c = c;
    }
    if (x == LRight.x) {
      this.x = x - PaddleWidth ;
      this.y = (pongtablerect.y) + (pongtablerect.h * 1/2) - (paddleHeight * 1/2) ;
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
    if (y < pongtablerect.y) y = pongtablerect.y;
  }
  void movedown() {
    y += paddleTravel;
    if (y > pongtablerect.y + pongtablerect.h - paddleHeight) y = pongtablerect.y + pongtablerect.h - paddleHeight;
  }
}
