class paddle {
  float TABLEX, TABLEY;
  float TABLEWIDTH, TABLEHEIGHT;
  float netX, netY, netWidth, netHeight;
  float paddleX, paddleY, paddleWidth, paddleHeight,paddlestartheight;
  float Paddletraveldistance;
  color paddlecolor;
  color overlaycolor;
  boolean up=false, down=false;
  paddle (float paddleXparamater, float balld) {
    netWidth = balld * 3;
    paddleWidth = balld * 1/2 ;
    TABLEY = displayHeight *1/10;
    TABLEHEIGHT = displayHeight * 8/10;
    paddlestartheight = 0.25;
    paddleHeight = TABLEHEIGHT * paddlestartheight;
    if (paddleXparamater == 0) netX = paddleXparamater  ;
    if (paddleXparamater == displayWidth) {
      netX = paddleXparamater - netWidth*2 - paddleWidth;
    }

    this.paddleX = netX + netWidth ;

    if (paddleXparamater == displayWidth) netX = paddleXparamater - netWidth ;
    this.paddlestartheight = 0.25;
    this.paddleHeight = TABLEHEIGHT * paddlestartheight;
    this.paddleY = TABLEY + (TABLEHEIGHT * 1/2) - (paddleHeight * 1/2);
    this.Paddletraveldistance =10;

    paddlecolor = (#FFFFFF) ;
    overlaycolor = (#2e2e2e);
  }//end paddle
  void draw() {
    paddles();

  }
  void paddles() {
    fill(paddlecolor);
    rect(paddleX, paddleY, paddleWidth, paddleHeight);
    fill(0);
      if (up == true) {
    this.movePaddleup();
  }
  if (down == true){
    this.movePaddledown();
  }
  }//end paddles
  void overlay() {
    
  }
  void wspress() {
  if (key =='W'| key=='w') mypaddle.up = true;
  if (key =='S'| key=='s')  mypaddle.down = true ;
}
  void wspressrel() {
  if (key =='W'| key=='w') mypaddle.up = false;
  if (key =='S'| key=='s')  mypaddle.down = false ;
}
void keypressedOL() {
  if (key =='O' | key=='o') savagepaddle.up = true;
  if (key =='l' | key=='l') savagepaddle.down = true;
}
void keypressedOLrel() {
  if (key =='O' | key=='o') savagepaddle.up = false;
  if (key =='l' | key=='l') savagepaddle.down = false;
}
  void movePaddledown(){
    paddleY += Paddletraveldistance;
    if(paddleY > TABLEY+TABLEHEIGHT-paddleHeight) paddleY = TABLEY+TABLEHEIGHT -paddleHeight;
  }
  void movePaddleup(){
    paddleY -= Paddletraveldistance ;
    if(paddleY < TABLEY) paddleY = TABLEY;

  }
}// end paddle
