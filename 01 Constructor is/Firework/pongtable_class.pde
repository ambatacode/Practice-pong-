//global variables
class pongtable {
  float HUDsquare, HUDY, hudW, hudH;
  color pongtablecolor;
  
  pongtable() {
    HUDsquare = 0;
    HUDY = displayHeight* 1/10;
    hudW = displayWidth;
    hudH = displayHeight * 8/10;
    pongtablecolor = (#000000);
  }
  void draw(){
    pongtabledraw ();
  }
  void pongtabledraw (){
    fill (pongtablecolor);
    rect (HUDsquare, HUDY, hudW, hudH);
    fill (0);
    
  }
  
}
