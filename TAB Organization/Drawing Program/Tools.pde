void toolsDraw() {
  if ( draw==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight ) line( mouseX, mouseY, pmouseX, pmouseY );//End Line Drawing Tool
  if ( draw==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight ) ellipse( mouseX, mouseY, diameter, diameter ); //End Circle Drawing Tool
}//End toolsDraw
//
void toolsMousePressed() {
  //Paper-Button
  if ( mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight ) {
    if ( draw==true ) {
      draw=false;
    } else {
      draw=true;
    }//End draw Boolean
  }//End Paper Button (Draw Surface)
}//End toolsMousePressed
