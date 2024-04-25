class Scoreboard extends Display {
  Scoreboard(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
    if (x == LLeft.x) {
      this.x = x;
      this.y = pongtablerect.y;
      this.w = displayWidth* 3/7;
      this.h = pongtablerect.h;
      this.c = c;
    }
    if (x == LRight.x) {
      this.x = x - Leftscoreboard.w;
      this.y = pongtablerect.y;
      this.w = displayWidth* 3/7;
      this.h = pongtablerect.h;
      this.c = c;
    }
  }
  void draw () {
    c = (#FFFFFF);
    fill(c);
    rect(x, y, w, h);
    fill(0);
  }
  void text() {
  }
}
