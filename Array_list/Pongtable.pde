class PongTable extends Rectangle {
  //Global Variables
  //
  PongTable (int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
  } //End PongTable
  //
  //Methods
  void draw() {
    //Border: foreground v background, separation from table to buttons
    //Background Colour: simple fill or toggle with nightMode
    //println(c);
    c = (#000000);
    fill(c);
    rect(x, y, w, h); //Pong Table
    //fill(resetDefault);
    //Reset the Defaults
  } //End draw()
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
} //End PongTable
