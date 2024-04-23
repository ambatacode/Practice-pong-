class Firework extends Circle {
  Firework(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
    speedx = Xdirection();
    speedy = Ydirection();
    this.x = x ;
    this.y = y ;
    this.w = int (random(1, 5));
    this.h = int (random(1, 5));
    this.c = c;
  }
  void draw() {
    c = (#FFFFFF);
    fill(c);
    rect(x, y, w, h);
    fill(0);
    move();
  }
  void move() {
    x += speedx ;
    y += speedy ;
  }
}
