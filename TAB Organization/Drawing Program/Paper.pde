//Global Variables
Boolean paper=false;
float drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight, diameter;
//
void newPaper() {
  fill(white);
  rect(drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight);
  paper = false;
}//End newPaper
