 PImage light;
class imagee extends Display {
 
  void imagere() {
    light = loadImage("data/Xeroclightsimbol.png.png");
  }
  imagee(PImage Image, int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
  }
  void draw () {
    if (menuon)drawing();
  }//end draw
  void drawing() {
    image(light, x, y, w, h );
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
