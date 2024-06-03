boolean pause = false;
//
class Ball extends Circle {
  //
  float SpeedSwitch;
  int BallRadius;
  boolean SpeedEGG = false;
  //
  Ball(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
    BallRadius = displayHeight * 1/25;
    this.x = displayWidth * 1/2 - BallRadius * 1/2;
    this.y = (width * 1/10) + (displayHeight * 8/10 * 1/2) - (BallRadius * 1/2) ;
    this.w = BallRadius;
    this.h = BallRadius;
    this.speedx = Xdirection();
    this.speedy = Ydirection();
    this.SpeedSwitch = 12;
    this.c = c;
  }
  void draw() {
    c = (#FFFFFF);
    fill(c);
    rect(x, y, w, h);
    fill(0);
    move();
    updateVariables(shapes.get(0).w, shapes.get(0).h, shapes.get(0).y, shapes.get(4).x, shapes.get(4).y, shapes.get(4).w, shapes.get(4).h, shapes.get(5).x, shapes.get(5).y, shapes.get(5).w, shapes.get(5).h);
  }

  void speedegg() {
    if (SpeedEGG == true) {
      this. SpeedSwitch = 30;
    }
  }

  //
  void move() {
    speedegg();
    bounce();
    x += speedx * SpeedSwitch;
    y += speedy * SpeedSwitch;
  }
  int TableW, TableH, TableX, TableY;
  int PaddleX1, PaddleY1, PaddleW1, PaddleH1;
  int PaddleX2, PaddleY2, PaddleW2, PaddleH2;
  void updateVariables(int TW, int TH, int TY, int PX1, int PY1, int PW1, int PH1, int PX2, int PY2, int PW2, int PH2 ) {
    TableW = TW;
    TableH = TH;
    TableY = TY;
    //
    PaddleX1 = PX1 ;
    PaddleY1 = PY1 ;
    PaddleW1 = PW1 ;
    PaddleH1 = PH1 ;
    //
    PaddleX2 = PX2 ;
    PaddleY2 = PY2 ;
    PaddleW2 = PW2 ;
    PaddleH2 = PH2 ;
    println(PaddleY1);
  }
  void bounce() {
    if (y  < (TableY)|| y > TableY + TableH - w) speedy *= -1;  
    if (x > PaddleX2 - BallRadius && y > PaddleY2 && y < PaddleY2 + PaddleH2)speedx *= -1;
    if (x < PaddleX1 + PaddleW1 && y > PaddleY1 && y < PaddleY1 + PaddleH1 )speedx *= -1;
  }
  void keypressed() {
    if (key == ' ') {
      pause();
    }
  }
  void keyreleased() {
  }
void pause(){
  if (pause){
    pause = false;
  }else {
    pause = true;
  }
}
}
