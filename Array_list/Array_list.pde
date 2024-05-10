import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

PongTable pongtablerect;
Ball Playball, Cheatball;
Lines Middle, LLeft, LRight;
Net Left, Right;
Paddle P1Paddle, P2Paddle;
Firework []firework = new Firework[50];
Scoreboard Leftscoreboard, Rightscoreboard;

ArrayList<Shape> shapes = new ArrayList<Shape>();
//
void setup() {
  background(#1c1c1c);
  PongTable pongtablerect = new PongTable (0, 0, 0, 0, 0);
  shapes.add(pongtablerect);
  //
  for (int i=0; i< firework.length; i++) {
    firework[i] = new Firework(displayWidth*-1, displayHeight*-1, 0, 0, 0);
  }
  //
  Net Left = new Net(0, 0, 0, 0, 0);
  Left.UpdateNets(pongtablerect.h, pongtablerect.y);
  shapes.add(Left);
  //
  Net Right = new Net(1, 0, 0, 0, 0);
  Right.UpdateNets(pongtablerect.h, pongtablerect.y);
  shapes.add(Right);
  //
  Lines Middle = new Lines(displayWidth*1/2, 0, 0, 0, 0);
  Middle.UpdateLines(pongtablerect.h, pongtablerect.y, Left.w, Left.x, Right.x);
  //
  Lines LLeft = new Lines(0, 0, 0, 0, 0);
  LLeft.UpdateLines(pongtablerect.h, pongtablerect.y, Left.w, Left.x, Right.x);
  //
  Lines LRight = new Lines(1, 0, 0, 0, 0);
  LRight.UpdateLines(pongtablerect.h, pongtablerect.y, Left.w, Left.x, Right.x);
  //
  //Leftscoreboard = new Scoreboard(LLeft.x, 0, 0, 0, 0);
  //Rightscoreboard = new Scoreboard(Right.x, 0, 0, 0, 0);
  //
  Paddle P1Paddle = new Paddle(0, 0, 0, 0, 0);
  P1Paddle.UpdatePaddle(pongtablerect.x, pongtablerect.y, pongtablerect.w, pongtablerect.h, LLeft.x, LRight.x);
  Paddle P2Paddle = new Paddle(1, 0, 0, 0, 0);
  P2Paddle.UpdatePaddle(pongtablerect.x, pongtablerect.y, pongtablerect.w, pongtablerect.h, LLeft.x, LRight.x);
  //
  Ball Playball = new Ball(0, 0, 0, 0, 0);
  Playball.updateball(pongtablerect.w, pongtablerect.h, pongtablerect.y, P1Paddle.x, P1Paddle.y, P1Paddle.w, P1Paddle.h, P2Paddle.x, P2Paddle.y, P2Paddle.w, P2Paddle.h);
  //


  shapes.add(Middle);
  shapes.add(LLeft);
  shapes.add(LRight);
  shapes.add(P1Paddle);
  shapes.add(P2Paddle);
  shapes.add(Playball);

  //
  fullScreen();
}
//
void draw() {
  for (Shape s : shapes) {
    s.draw();
  }
  /*
  //
   Leftscoreboard.draw();
   Rightscoreboard.draw();
   //shapes.add(pongtablerect);
   Middle.draw();
   LLeft.draw();
   LRight.draw();
   //
   Playball.draw();
   //
   P1Paddle.draw();
   P2Paddle.draw();
   //
   if (Playball.x < LLeft.x && Playball.x > 0) {
   netExplosion(Playball.x, Playball.y);
   }
   for (int i=0; i< firework.length; i++) {
   firework[i].draw();
   }
   */
  //
}
//
void keyPressed() {
  //P1Paddle.BooleanPathP1();
  //P2Paddle.BooleanPathP2();
}
void keyReleased() {
  //P1Paddle.BooleanReleaseP1();
  //P2Paddle.BooleanReleaseP2();
}
//
void mousePressed() {
}
