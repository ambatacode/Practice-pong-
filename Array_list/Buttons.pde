boolean Logon = false;
class Button extends Display {
  Button(int x, int y, int w, int h, color c) {
    super(x, y, w, h, c);
  }
  void draw() {
    if (pongon) drawing();
    if (menuon) menudrawing();
    if (Logon) LogDrawing();
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
    if (x == width/30 &&y!= height*16/20) {
      rect(x, y, w, h);
      sinclair("<<");
    }
  }
  void menudrawing() {
    if (x == width/2 - width/7 * 1/2) {
      rect(x, y, w, h);
      sinclair("Play");
    }
    if (y == height*7/12) {
      rect(x, y, w, h);
      sinclair("Modes");
    }
  }
  void LogDrawing() {
    if (x== width/30 &&y != height/50) {
      rect(x, y, w, h);
      sinclair("<<");
    }
    if (x==width/20) {
      colorchangeH();
      rect(x, y, w, h);
      sinclair("Hard");
    }
    if (x == width*4/20) {
      colorchangeM();
      rect(x, y, w, h);
      sinclair("Medium");
    }
    if (x == width*7/20) {
      colorchangeE();
      rect(x, y, w, h);
      sinclair("Easy");
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
    if (pongon)mousepressedpaused();
    if (pongon)mousepressedquit();
    if (menuon)mousepressedstartgame();
    if (menuon)mousepressedLoggame();
    if (Logon)mousepressedBacktomenu();
    if (Logon)Dificultyhard();
    if (pongon)mousepressedBacktomenu2();
    if (Logon)DificultyMed();
    if (Logon)DificultyEasy();
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
    if (x == width/2 - width/7 * 1/2 && y!=height*7/12) {
      if (mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h) {
        if (menuon) {
          menuon = false;
          pongon = true;
          Logon = false;
        } else {
          menuon = true;
          pongon = false;
          Logon = false;
        }
      }
    }
  }
  void mousepressedLoggame() {
    if (x == width/2 - width/7 * 1/2 && y!=height*5/12) {
      if (mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h) {
        if (Logon) {
          menuon = true;
          pongon = false;
          Logon = false;
        } else if (!Logon) {
          menuon = false;
          pongon = false;
          Logon = true;
        }
      }
    }
  }
  void mousepressedBacktomenu() {
    if (x == width/30) {
      if (mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h) {
        if (Logon) {
          menuon = true;
          pongon = false;
          Logon = false;
        } else if (!Logon) {
          menuon = false;
          pongon = false;
          Logon = true;
        }
      }
    }
  }
  void mousepressedBacktomenu2() {
    if (x == width/30) {
      if (mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h) {
        if (pongon) {
          menuon = true;
          pongon = false;
          Logon = false;
        } else if (!pongon) {
          menuon = true;
          pongon = false;
          Logon = false;
        }
      }
    }
  }
  void Dificultyhard() {
    if (x == width/20) {
      if (mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h) {
        if (!Hardmode) {
          Hardmode = true;
          Medmode = false;
          Easymode = false;
        } else {
          Hardmode = false;
          Medmode = false;
          Easymode = false;
        }
      }
    }
  }
  void DificultyMed() {
    if (x == width*4/20) {
      if (mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h) {
        if (!Medmode) {
          Medmode = true;
          Hardmode = false;
          Easymode = false;
        } else {
          Medmode = false;
          Hardmode = false;
          Easymode = false;
        }
      }
    }
  }
    void DificultyEasy() {
    if (x == width*7/20) {
      if (mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h) {
        if (!Easymode) {
          Medmode = false;
          Hardmode = false;
          Easymode = true;
        } else {
          Medmode = false;
          Hardmode = false;
          Easymode = false;
        }
      }
    }
  }
  void colorchangeH() {
    if (Hardmode) {
      fill(#FF0000);
    } else {
      fill(#000000);
    }
  }
  void colorchangeM() {
    if (Medmode) {
      fill(#FF0000);
    } else {
      fill(#000000);
    }
  }
    void colorchangeE() {
    if (Easymode) {
      fill(#FF0000);
    } else {
      fill(#000000);
    }
  }
  void dificultychangerbalance() {
  }
}
void pause() {
  if (pause) {
    pause = false;
    lock = false;
  }else {
    pause = true;
    lock = true;
  }
}
