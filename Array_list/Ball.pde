boolean pause = true;
boolean pongon = false;
boolean menuon = true;
boolean start = true;
boolean truepause = false;
boolean lock = false;
int timer = 0;
//
class Ball extends Circle {
  //
  float SpeedSwitch;
  int BallRadius;
  boolean SpeedEGG = false;
  float directionx = Xdirection();
  float directiony =  Ydirection();
  //
  Ball(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
    BallRadius = displayHeight * 1/25;
    this.x = displayWidth * 1/2 - BallRadius * 1/2;
    this.y = height/2 - BallRadius/2;
    this.w = BallRadius;
    this.h = BallRadius;
    this.speedx = Xdirection();
    this.speedy = Ydirection();
    this.SpeedSwitch = 10;
    this.c = c;
  }
  void draw() {
    if (pongon) {
      countdown();
      drawing();
      counter();
      autostart();
    }
    if (menuon) {
      pause = true;
      x = displayWidth * 1/2 - BallRadius * 1/2;
      y = height/2 - BallRadius/2;
      timer = 0;
    }
  }
  //
  void drawing() {
    if (x < 0) {
      this.directionx = Xdirection();
      this.directiony = Ydirection();
    }
    if (x > width) {
      this.directionx = Xdirection();
      this.directiony = Ydirection();
    }
    c = (#FFFFFF);
    fill(c);
    rect(x, y, w, h);
    fill(0);
    if (!pause && !lock)move();
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
    x += directionx * SpeedSwitch;
    y += directiony * SpeedSwitch;
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
  }
  void bounce() {
    if (y  < (TableY)|| y > TableY + TableH - w) directiony *= -1;
    if (x > PaddleX2 + PaddleW2 - BallRadius && y > PaddleY2 && y < PaddleY2 + PaddleH2 && x < PaddleX2 + PaddleW2 )directionx *= -1;
    if (x < PaddleX1 + PaddleW1 && y > PaddleY1 && y < PaddleY1 + PaddleH1 && x > PaddleX1 )directionx *= -1;
  }
  void counter() {
    if (pause && !lock) {
      timer ++;
    }
    if (!pause && !lock) {
      timer = 0;
    }
  }
  void autostart() {
    if (timer > 200) {
      pause = false;
    }
  }
  void countdown() {
    if (pause && !lock) {
      fill(#000000);
      rect(width/2-height/3*1/2, height/2-height/3*1/2, height/3, height/3);
      if (timer > 50  ) {
        fill(#000000);
        rect(width/2-height/3*1/2, height/2-height/3*1/2, height/3, height/3);
        ishmael("3");
      }
      if (timer > 100 ) {
        fill(#000000);
        rect(width/2-height/3*1/2, height/2-height/3*1/2, height/3, height/3);
        ishmael("2");
      }
      if (timer > 150) {
        fill(#000000);
        rect(width/2-height/3*1/2, height/2-height/3*1/2, height/3, height/3);
        ishmael("1");
      }
    }
  }
  void ishmael(String countdown) {
    drawText( height, ink, CENTER, CENTER, Font, textSpace+countdown+textSpace, width/2-height/3*1/2, height/2-height/3*1/2, height/3, height/3);
  }
  void keypressed() {
  }
  void keyreleased() {
  }
  void mousepressed() {
  }
}
