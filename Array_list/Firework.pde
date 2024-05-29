class Firework extends Circle {
  int RandomShape;
  Firework(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
    RandomShape = int (random(displayWidth*1/30));
    speedx = random(-5, 5);
    speedy = random(-5, 5);
    this.x = x ;
    this.y = y ;
    this.w = RandomShape ;
    this.h = RandomShape;
    this.c = c;
  }
  void draw() {

    fill(#FFFFFF);
    rect(x, y, w, h);
    fill(0);
    move();
  }
  void updateVariables(int TW, int TH, int TY, int PX1, int PY1, int PW1, int PH1, int PX2, int PY2, int PW2, int PH2 ) {}//end updateVariables
  void move() {
    x += speedx ;
    y += speedy ;
  }
  void keypressed() {
  }
  void keyreleased() {
  }
}
