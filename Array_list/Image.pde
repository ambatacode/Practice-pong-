class Image extends Display {
  PImage image;
  PImage image2;
  PImage image3;
  Image(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
  }
  void identifyImage( String i, String i1, String i2) {
    image = loadImage(i);
    image2 = loadImage(i1);
    image3 = loadImage(i2);
  }
  void draw () {
    if (menuon)drawing();
  }//end draw
  void drawing() {
    if (X == 0) image(image, x, y, w, h);
    if (x == 1) image(image2, x, y, w, h );
  }
  void text() {
  }
  void updateVariables(int TY, int TH, int LLX, int LLR, int BX, int PW1, int PH1, int PX2, int PY2, int PW2, int PH2 ) {
  }//end updateVariables
  int TableY, tableH, LineLX, LineRX, BallX;
  void keypressed() {
  }
  void keyreleased() {
  }
  void mousepressed() {
  }
}
