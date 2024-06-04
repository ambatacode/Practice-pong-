class Button extends Display{
    Button(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
  }
  void draw(){
    rect(x, y, w, h, c);
    if (x == width/2 - (width/10 * 1/2)){sinclair("PAUSE");}
  }
  void keypressed(){}
  void keyreleased(){}
  
  void updateVariables(int TW, int TH, int TY, int PX1, int PY1, int PW1, int PH1, int PX2, int PY2, int PW2, int PH2 ){
    
  }
  void sinclair(String SSP){
    drawText( height, #FFFFFF, CENTER, CENTER, Font, textSpace+textSpace+SSP+textSpace+textSpace, x, y, w, h);
  }
  void mousepressed(){
    if (x == width/2 - (width/10 * 1/2)) {mousepressedpaused();}
  }
  
  void mousepressedpaused(){
    if (mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h){
      pause();
    }
  }
}
