//Global Variables
Boolean draw=false;
int reset=1;
//
PFont font;
int intialSize=55, size;
String quitButtonString = "Quit";
String secondTextString = "Done!";
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float secondTextX, secondTextY, secondTextWidth, secondTextHeight;
color white=255, black=0, red=#FF0303, quitButtonColour;
//
void setup() {
  //
  //Mandatory: mistake display orientation should break the app, feedback to the Console & Canvas
  size(500, 600); // fullScreen(); displayWidth, displayHeight
  //
  population();
  textSetup();
  //
  newPaper();
}//End setup
//
void draw() {
  //
  if ( paper==true ) newPaper();
  toolsDraw();
  quitButtonDraw();
  //Second Text (copy and paste)
  fill(white);
  rect(secondTextX, secondTextY, secondTextWidth, secondTextHeight);
  fill(black); //Ink
  textAlign( CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 10; //Change to fit
  textFont(font, size);
  text(secondTextString, secondTextX, secondTextY, secondTextWidth, secondTextHeight);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  toolsMousePressed();
  //
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) exit();
  //
  //New Piece of Paper
  if ( mouseX>=secondTextX && mouseX<=secondTextX+secondTextWidth && mouseY>=secondTextY && mouseY<=secondTextY+secondTextHeight ) paper=true;
  //
}//End mousePressed
//
//End MAIN
