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
  
  pongtablerect = new PongTable(0, 0, 0, 0, 0);
  /*
  Playball = new Ball(0, 0, 0, 0, 0);
  //
  for (int i=0; i< firework.length; i++) {
    firework[i] = new Firework(displayWidth*-1, displayHeight*-1, 0, 0, 0);
  }
  //
  Left = new Net(0, 0, 0, 0, 0);
  Right = new Net(displayWidth, 0, 0, 0, 0);
  //
  Middle = new Lines(displayWidth*1/2, 0, 0, 0, 0);
  LLeft = new Lines(Left.x, 0, 0, 0, 0);
  LRight = new Lines(Right.x, 0, 0, 0, 0);
  //
  Leftscoreboard = new Scoreboard(LLeft.x, 0, 0, 0, 0);
  Rightscoreboard = new Scoreboard(Right.x, 0, 0, 0, 0);
  //
  P1Paddle = new Paddle(LLeft.x, 0, 0, 0, 0);
  P2Paddle = new Paddle(LRight.x, 0, 0, 0, 0);
  */
  //
  fullScreen();
}
//
void draw() {
  
  pongtablerect.draw();
  /*
  //
  Leftscoreboard.draw();
  Rightscoreboard.draw();
  //
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
