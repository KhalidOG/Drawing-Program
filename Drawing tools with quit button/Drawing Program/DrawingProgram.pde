//Global Variables
Boolean draw=false;
float drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight, diameter;
int reset=1;
//
PFont font;
int intialSize=55, size;
String quitButtonString = "Quit";
String secondTextString = "Done";
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
  //
  font = createFont ("Harrington", intialSize);
  //
  rect(drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight);
  //
}//End setup
//
void draw() {
  //
  //Line Drawing Tools
  if ( draw==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight ) line( mouseX, mouseY, pmouseX, pmouseY );//End Line Drawing Tool
  if ( draw==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight ) ellipse( mouseX, mouseY, diameter, diameter ); //End Circle Drawing Tool
  //
  //Quit Button
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) { //Hoverover
    quitButtonColour = red;
  } else {
    quitButtonColour = black;
  }//End Hoverover
  fill(quitButtonColour);
  noStroke(); //removes rect() outline
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  stroke(reset);
  //Quit Button Text
  fill(black); //Ink
  textAlign( CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 25; //Change to fit
  textFont(font, size);
  text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
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
  //Paper-Button
  if ( mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight ) {
    if ( draw==true ) {
      draw=false;
    } else {
      draw=true;
    }//End draw Boolean
  }//End Paper Button (Draw Surface)
  //
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) exit();
  //
}//End mousePressed
//
//End MAIN
