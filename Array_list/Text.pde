//Global Variable
PFont Font;
color ink = #4d4d4d, resetInk = #000000;
int alignHorizontal, alignVertical;
String  textcomma = ",", textSpace = "  ", textPeriod = ".";
String text = "whoop";
//
void setupText() {
  Font = createFont ("Arial", 32); 
}//end setupText()
void drawText( float appHeight, color ink, int alignHorizontal, int alignVertical, PFont Font, String text, float x, float y, float widthVari, float heightVari ) {
  predrawText( ink, appHeight, alignHorizontal, alignVertical, Font ); //passing parameters
  textSize(textCalculator(height, text, widthVari));
  text(text, x, y, widthVari, heightVari);
  textReset();
}//end drawText()
void textKeyPressed() {}
void textMousePressed() {}
//
void predrawText( color ink, float appHeight, int alignHorizontal, int alignVertical, PFont Font1 ) {
  fill(ink);
  textAlign (alignHorizontal, alignVertical);
  textFont(Font, height);
  if(Font != null) { 
    textFont(Font, appHeight);
  }
}//end predrawText()
//
void textReset() { fill(resetInk); }//end textReset
//
float textCalculator( float size, String text, float textPara ) {
  textSize(size); //For text width sizing
  while ( textWidth(text) > textPara ){
    textSize(size *= 0.8); //decreases text size by 20%
  }
  return size;
  
}//end textCalculator
//end Text SubProgram
