//Global Variables
//
void quitButtonDraw() {
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
}//End quitButtonDraw
