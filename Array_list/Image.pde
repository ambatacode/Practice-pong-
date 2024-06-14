class Image extends Display {
  PImage image;
  PImage image2;
  PImage image3;
  PImage image4;
  PImage image5;
  PImage image6;
  Image(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
  }
  void identifyImage( String i, String i1, String i2, String i3,String i4,String i5) {
    image = loadImage(i);
    image2 = loadImage(i1);
    image3 = loadImage(i2);
    image4 = loadImage(i3);
    image5 = loadImage(i4);
    image6 = loadImage(i5);
  }
  void draw () {
    if (menuon)drawing();
    if (Logon){
    logHUD();
  }
  }//end draw
  void drawing() {
    if (x == width/2 - width/2 *1/2) image(image, x, y, w, h);
    if (x == 0 && y!= height * 2/3 && w!=width) image(image2, x, y, w, h );
    if (x == 0 && y==0 && w == width && h == height && c != 1) image(image3, x, y, w, h );
    if (x == width - (width/10) ) image(image2, x, y, w, h );
    if (y == height * 2/3) image(image4, x, y, w, h );
    if (x == width/2 - (width*8/15*1/2))image(image5, x, y, w, h );
  }
  void logHUD(){
    if (x == 0 && y==0 && w == width && h == height) image(image6, x, y, w, h);
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
