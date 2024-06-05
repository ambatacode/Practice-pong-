class PongTable extends Rectangle {
  //Global Variables
  //
  PongTable (int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
  } //End PongTable
  //
  //Methods
  void draw() {
    if (pongon) drawing();
  } //End draw()
  void drawing() {
    c = (#000000);
    fill(c);
    rect(x, y, w, h); //Pong Table
  }
  void updateVariables(int TW, int TH, int TY, int PX1, int PY1, int PW1, int PH1, int PX2, int PY2, int PW2, int PH2 ) {
  }//end updateVariables
  void initializetable() {
    this.x = 0;
    this.y = displayHeight * 1/10;
    this.w = displayWidth;
    this.h = displayHeight * 8/10;
  }
  void keypressed() {
  }
  void keyreleased() {
  }
  void mousepressed() {
  }
} //End PongTable
