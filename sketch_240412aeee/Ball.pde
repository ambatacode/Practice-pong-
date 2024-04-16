class Ball extends Circle{
  //
  float SpeedSwitch;
  //
  Ball(int x, int y, int w, int h, color c){
    super(x, y, w, h, c);
    this.x = pongtablerect.w * 1/2;
    this.y = (pongtablerect.y * 1/2) + (pongtablerect.h * 1/2) ;
    this.w = displayHeight * 1/30;
    this.h = displayHeight * 1/30;
    this.speedx = Xdirection();
    this.speedy = Xdirection();
    this.SpeedSwitch = 5;
    this.c = c;
  }
  void draw(){
    c = (#FFFFFF);
    fill(c);
    rect(x, y, w, h);
    fill(0);
    move();
  }
  void move(){
    bounce();
    x += speedx * SpeedSwitch;
    y += speedy * SpeedSwitch;
  }
  void bounce(){
    if (y  < (pongtablerect.y)|| y > pongtablerect.y + pongtablerect.h - w) speedy *= -1;
  }
}
