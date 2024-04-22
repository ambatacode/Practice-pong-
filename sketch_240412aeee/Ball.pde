class Ball extends Circle{
  //
  float SpeedSwitch;
  int BallRadius;
  boolean SpeedEGG = false;
  //
  Ball(int x, int y, int w, int h, color c){
    super(x, y, w, h, c);
    BallRadius = displayHeight * 1/20;
    this.x = pongtablerect.w * 1/2 - BallRadius * 1/2;
    this.y = (pongtablerect.y) + (pongtablerect.h * 1/2) - (BallRadius * 1/2) ;
    this.w = BallRadius;
    this.h = BallRadius;
    this.speedx = Xdirection();
    this.speedy = Ydirection();
    this.SpeedSwitch = 10;
    this.c = c;
  }
  void draw(){
    c = (#FFFFFF);
    fill(c);
    rect(x, y, w, h);
    fill(0);
    move();
  }
  
  void speedegg(){
    if (SpeedEGG == true){
      this. SpeedSwitch = 30;
    }
  }
  
  void move(){
    speedegg();
    bounce();
    x += speedx * SpeedSwitch;
    y += speedy * SpeedSwitch;
  }
  void bounce(){
    if (y  < (pongtablerect.y)|| y > pongtablerect.y + pongtablerect.h - w) speedy *= -1;
    if (x < P1Paddle.x + P1Paddle.w && y > P1Paddle.y && y < P1Paddle.y + P1Paddle.h && x > P1Paddle.x )speedx *= -1;
    if (x > P2Paddle.x - BallRadius && y > P2Paddle.y && y < P2Paddle.y + P2Paddle.h && x < P2Paddle.x)speedx *= -1;
  }
}
