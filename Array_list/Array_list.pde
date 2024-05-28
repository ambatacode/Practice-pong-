import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


Paddle P1Paddle, P2Paddle;
Firework []firework = new Firework[50];
ArrayList<Shape> shapes = new ArrayList<Shape>();
//
void setup() {
  setupText();
  PongTable pongtablerect = new PongTable (0, 0, 0, 0, 0);
  shapes.add(pongtablerect);
  pongtablerect.initializetable();
  //
  for (int i=0; i< firework.length; i++) {
    firework[i] = new Firework(displayWidth*-1, displayHeight*-1, 0, 0, 0);
  }
  //
  Net Left = new Net(0, 0, 0, 0, 0);
  Left.UpdateNets(pongtablerect.h, pongtablerect.y);
  Left.Netintitialize();
  shapes.add(Left);
  //
  Net Right = new Net(1, 0, 0, 0, 0);
  Right.UpdateNets(pongtablerect.h, pongtablerect.y);
  Right.Netintitialize();
  shapes.add(Right);
  //
  Lines Middle = new Lines(displayWidth*1/2, 0, 0, 0, 0);
  Middle.UpdateLines(pongtablerect.h, pongtablerect.y, Left.w, Left.x, Right.x);
  Middle.LinesInitialize();
  //
  Lines LLeft = new Lines(0, 0, 0, 0, 0);
  LLeft.UpdateLines(pongtablerect.h, pongtablerect.y, Left.w, Left.x, Right.x);
  LLeft.LinesInitialize();
  //
  Lines LRight = new Lines(1, 0, 0, 0, 0);
  LRight.UpdateLines(pongtablerect.h, pongtablerect.y, Left.w, Left.x, Right.x);
  LRight.LinesInitialize();
  //
  Paddle P1Paddle = new Paddle(0, 0, 0, 0, 0);
  P1Paddle.UpdatePaddle(pongtablerect.x, pongtablerect.y, pongtablerect.w, pongtablerect.h, LLeft.x, LRight.x);
  P1Paddle.initializePaddle();
  //
  Paddle P2Paddle = new Paddle(1, 0, 0, 0, 0);
  P2Paddle.UpdatePaddle(pongtablerect.x, pongtablerect.y, pongtablerect.w, pongtablerect.h, LLeft.x, LRight.x);
  P2Paddle.initializePaddle();
  //
  Ball Playball = new Ball(0, 0, 0, 0, 0);
  Playball.updateball(pongtablerect.w, pongtablerect.h, pongtablerect.y, P1Paddle.x, P1Paddle.y, P1Paddle.w, P1Paddle.h, P2Paddle.x, P2Paddle.y, P2Paddle.w, P2Paddle.h);
  Playball.initialize();
  //
  Scoreboard Leftscoreboard = new Scoreboard(0, 0, 0, 0, 0);
  Leftscoreboard.updateSB(pongtablerect.y, pongtablerect.h, LLeft.x, LRight.x);
  Leftscoreboard.initializescore();
  //
  Scoreboard Rightscoreboard = new Scoreboard(1, 0, 0, 0, 0);
  Rightscoreboard.updateSB(pongtablerect.y, pongtablerect.h, LLeft.x, LRight.x);
  Rightscoreboard.initializescore();

  shapes.add(Middle);
  shapes.add(LLeft);
  shapes.add(LRight);
  shapes.add(P1Paddle);
  shapes.add(P2Paddle);
  shapes.add(Playball);
  //shapes.add(Leftscoreboard);
  shapes.add(Rightscoreboard);

  //
  fullScreen();
}
//
void draw() {
  background(#1c1c1c);
  for (Shape s : shapes) {
    s.draw();
  }
}
//
void keyPressed() {
  for (Shape s : shapes) {
    s.keypressed();
  }
}
void keyReleased() {
  for (Shape s : shapes) {
    s.keyreleased();
  }
}
//
void mousePressed() {
}
