abstract class Display extends Rectangle {
  Display(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
  }
  abstract void draw();
  abstract void mousepressed();
}
