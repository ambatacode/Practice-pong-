class paddle {
  float TABLEX, TABLEY;
  float TABLEWIDTH, TABLEHEIGHT;
  float netX, netY, netWidth, netHeight;
  float paddleX, paddleY, paddleWidth, paddleHeight;
  color paddlecolor;
  paddle (float paddleXparamater, float balld) {
    netWidth = balld * 3;
    paddleWidth = balld * 1/2 ;
    TABLEY = displayHeight *1/10;
    TABLEHEIGHT = displayHeight * 8/10;
    if (paddleXparamater == 0) netX = paddleXparamater  ;
    if (paddleXparamater == displayWidth) {
      netX = paddleXparamater - netWidth - paddleWidth;
    }

    this.paddleX = netX + netWidth ;

    if (paddleXparamater == displayWidth) netX = paddleXparamater - netWidth ;
    paddleHeight = TABLEHEIGHT * 1/4;
    this.paddleY = TABLEY + (TABLEHEIGHT * 1/2) - (paddleHeight * 1/2);

    paddlecolor = (#FFFFFF) ;
  }//end paddle
  void draw() {
    paddles();
  }
  void paddles() {
    fill(paddlecolor);
    rect(paddleX, paddleY, paddleWidth, paddleHeight);
    fill(0);
  }//end paddles
  void movePaddledown(){
    paddleY += Paddletraveldistance;
  }
  void movePaddleup(){
    paddleY -=;
  }
}// end paddle
