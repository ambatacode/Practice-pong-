PongTable pongtablerect;
Ball Playball;

void setup() {
  pongtablerect = new PongTable(0,0,0,0,0);
  Playball = new Ball(0,0,0,0,0);
  fullScreen();
}
void draw(){
  pongtablerect.draw();
  Playball.draw();
}
