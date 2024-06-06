class Button extends Display {
  Button(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
  }
  void draw() {
    if (pongon) drawing();
    if (menuon) menudrawing();
  }
  void drawing() {
    fill(c);
    if (x == width/2 - (width/10 * 1/2)) {
      rect(x, y, w, h);
      sinclair("PAUSE");
    }
    if (x == width*19/20) {
      rect(x, y, w, h);
    }
  }
  void menudrawing() {
    if (x == width/2 - width/7 * 1/2) {
      rect(x, y, w, h);
    }
  }
  void keypressed() {
    if (key == 'p') pause();
  }
  void keyreleased() {
  }

  void updateVariables(int TW, int TH, int TY, int PX1, int PY1, int PW1, int PH1, int PX2, int PY2, int PW2, int PH2 ) {
  }
  void sinclair(String SSP) {
    drawText( height, #FFFFFF, CENTER, CENTER, Font, textSpace+textSpace+SSP+textSpace+textSpace, x, y, w, h);
  }
  void mousepressed() {
    mousepressedpaused();
    mousepressedquit();
    if(menuon)mousepressedstartgame();
  }

  void mousepressedpaused() {
    if (x == width/2 - (width/10 * 1/2)) {
      if (mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h) pause();
    }
  }
  void mousepressedquit() {
    if (x == width*19/20) {
      if (mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h) exit();
    }
  }
  void mousepressedstartgame() {
    if (x == width/2 - width/7 * 1/2) {
      if (mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h) {
        if (menuon) {
          menuon = false;
          pongon = true;
        } else {
          menuon = true;
          pongon = false;
        }
      }
    }
  }
  void pause() {
    if (pause) {
      pause = false;
    } else {
      pause = true;
    }
  }
}
