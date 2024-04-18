PongTable pongtablerect;
Ball Playball;
Lines Middle, LLeft, LRight;
Net Left, Right;
//
void setup() {
  pongtablerect = new PongTable(0, 0, 0, 0, 0);
  Playball = new Ball(0, 0, 0, 0, 0);
  //
  Left = new Net(0, 0, 0, 0, 0);
  Right = new Net(displayWidth, 0, 0, 0, 0);
  //
  Middle = new Lines(displayWidth*1/2, 0, 0, 0, 0);
  LLeft = new Lines(Left.x, 0, 0, 0, 0);
  LRight = new Lines(Right.x, 0, 0, 0, 0);
  //
  fullScreen();
}
void draw() {
  pongtablerect.draw();
  Middle.draw();
  Playball.draw();
  LLeft.draw();
  LRight.draw();
}
