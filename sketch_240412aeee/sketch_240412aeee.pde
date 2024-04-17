PongTable pongtablerect;
Ball Playball;
Lines Middle;

void setup() {
  pongtablerect = new PongTable(0,0,0,0,0);
  Playball = new Ball(0,0,0,0,0);
  Middle = new Lines(displayWidth*1/2,0,0,0,0);
  fullScreen();
}
void draw(){
  pongtablerect.draw();
  Middle.draw();
  Playball.draw();
}
