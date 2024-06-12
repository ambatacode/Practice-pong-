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
  fullScreen();
  String lightIm = "data/Xeroclightsimbol.png.png";
  String teethIm = "data/s-l1200(1).png";
  String flowerIm ="data/sunflower+icon.png" ;
  String LandsccapeIm ="data/enchanting-cutouts-of-green-hills-landscape-free-png(1).png" ;
  String logoIm ="data/image_2024-06-12_105103335.png";
  setupText();
  PongTable pongtablerect = new PongTable (0, 0, 0, 0, 0);

  pongtablerect.initializetable();
  //
  for (int i=0; i< firework.length; i++) {
    firework[i] = new Firework(displayWidth*-1, displayHeight*-1, 0, 0, 0);
  }
  //
  Net Left = new Net(0, 0, 0, 0, 0);
  Left.UpdateNets(pongtablerect.h, pongtablerect.y);
  Left.Netintitialize();
  //
  Net Right = new Net(1, 0, 0, 0, 0);
  Right.UpdateNets(pongtablerect.h, pongtablerect.y);
  Right.Netintitialize();

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
  P1Paddle.updateVariables(pongtablerect.x, pongtablerect.y, pongtablerect.w, pongtablerect.h, LLeft.x, LRight.x,0,0,0,0,0);
  P1Paddle.initializePaddle();
  //
  Paddle P2Paddle = new Paddle(1, 0, 0, 0, 0);
  P2Paddle.updateVariables(pongtablerect.x, pongtablerect.y, pongtablerect.w, pongtablerect.h, LLeft.x, LRight.x,0,0,0,0,0);
  P2Paddle.initializePaddle();
  //
  Ball Playball = new Ball(0, 0, 0, 0, 0);
  //Playball.updateVariables(pongtablerect.w, pongtablerect.h, pongtablerect.y, P1Paddle.x, P1Paddle.y, P1Paddle.w, P1Paddle.h, P2Paddle.x, P2Paddle.y, P2Paddle.w, P2Paddle.h);
  //
  Scoreboard Leftscoreboard = new Scoreboard(0, 0, 0, 0, 0);
  Leftscoreboard.updateVariables(pongtablerect.y, pongtablerect.h, LLeft.x, LRight.x, Playball.x, Playball.BallRadius, 0, 0, 0, 0, 0);
  Leftscoreboard.initializescore();
  //
  Scoreboard Rightscoreboard = new Scoreboard(1, 0, 0, 0, 0);
  Rightscoreboard.updateVariables(pongtablerect.y, pongtablerect.h, LLeft.x, LRight.x,Playball.x, Playball.BallRadius, 0, 0, 0, 0, 0);
  Rightscoreboard.initializescore();
  //
  Button Pause = new Button(width/2 - (width/10 * 1/2), height/30, width/10, height/19, #363636);
  Button exit = new Button(width*19/20, height/70, width/20, height/19, #363636);
  Button play = new Button(width/2 - width/7 * 1/2, height*5/12, width/7, height/9, #FFFFFF);
  //
  Image LIGHT = new Image(width/2 - width/5 *1/2, height/30, width/5, height/3, 0);
  LIGHT.identifyImage(lightIm, teethIm, flowerIm, LandsccapeIm,logoIm);
  //
  Image Teeth = new Image(0, 0, width/10, height, 0);
  Teeth.identifyImage(lightIm, teethIm, flowerIm, LandsccapeIm,logoIm);
  //
  Image Teeth2 = new Image(width - (width/10), 0, width/10, height, 0);
  Teeth2.identifyImage(lightIm, teethIm, flowerIm, LandsccapeIm,logoIm);
  //
  Image Land = new Image(0, height * 2/3, width, height/3, 0);
  Land.identifyImage(lightIm, teethIm, flowerIm, LandsccapeIm,logoIm);
  
  Image Logo = new Image(width/2 - (width*8/15*1/2), height/15, width*8/15, height*3/9,0);
  Logo.identifyImage(lightIm, teethIm, flowerIm, LandsccapeIm,logoIm);

  shapes.add(pongtablerect);//0
  shapes.add(Left);//1
  shapes.add(Right);//2
  shapes.add(Middle);//3
  shapes.add(LLeft);//4
  shapes.add(LRight);//5
  shapes.add(P1Paddle);//6
  shapes.add(P2Paddle);//7
  shapes.add(Playball);//8
  shapes.add(Leftscoreboard);//9
  shapes.add(Rightscoreboard);//10
  shapes.add(Pause);//11
  shapes.add(exit);//12
  shapes.add(LIGHT);//13
  shapes.add(Logo);//14
  shapes.add(play);//15
  shapes.add(Land);//16
  shapes.add(Teeth);//17
  shapes.add(Teeth2);//18
  println(timer);
  //
}
//
void draw() {
  if (menuon)randomizer();
  if (menuon)background(#000000);
  if (pongon)background(#1c1c1c);
  shapes.get(6).updateVariables(shapes.get(0).x, shapes.get(0).y, shapes.get(0).w, shapes.get(0).h, shapes.get(4).x, shapes.get(5).x, shapes.get(8).x, shapes.get(8).y,0,0,0);
  shapes.get(7).updateVariables(shapes.get(0).x, shapes.get(0).y, shapes.get(0).w, shapes.get(0).h, shapes.get(4).x, shapes.get(5).x, shapes.get(8).x, shapes.get(8).y,0,0,0);
  shapes.get(8).updateVariables(shapes.get(0).w, shapes.get(0).h, shapes.get(0).y, shapes.get(6).x, shapes.get(6).y, shapes.get(6).w, shapes.get(6).h, shapes.get(7).x, shapes.get(7).y, shapes.get(7).w, shapes.get(7).h);
  shapes.get(9).updateVariables(shapes.get(0).y, shapes.get(0).h, shapes.get(4).x, shapes.get(5).x, shapes.get(8).x, 0, 0, 0, 0, 0, 0);
  for (Shape s : shapes) {
    s.draw();
  }
}
//
void keyPressed() {
  if (key == 'm') {
    if (menuon) {
      menuon = false;
      pongon = true;
    } else {
      menuon = true;
      pongon = false;
    }
  }
  //
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
  for (Shape s : shapes) {
    s.mousepressed();
  }
}
