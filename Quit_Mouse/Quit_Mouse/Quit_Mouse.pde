//Global Variables
float quitY, quitX, quitHeight, quitWidth;
color red=#D61616, orange=#FF9429, resetButtonColor=#FFFFFF, buttonFill=#E3E3E3; //Not night mode friendly colours
//
void setup() {
  size (500, 500);
  //
  //Population
  float centerX = width /2; //Centering the width
  float centerY = height/2; //Centering the height
  float centeringButtonWidth = width*1/4;
  float centeringButtonHeight = height*1/4;
  quitY = centerY - centeringButtonHeight;
  quitX = centerX - centeringButtonWidth;
  quitHeight = width*1/2; 
  quitWidth = height*1/2; 
  //
}//End void setup
//
void draw () {

  //Hover-Over
  if (mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight) {
    buttonFill = red;
  } else {
    buttonFill = orange;
  }//End Hover-Over
    fill(buttonFill); //2-colours to start, rememeber that night mode adds choice
    rect (quitY, quitX, quitHeight, quitWidth);
    fill(resetButtonColor);
    //Repeating CONSOLE values illustrating mouseX and mouseY related to a formula, mouse buttons
    //println("X-Value", quitX, "\t",  mouseX, "\t", quitX+quitWidth, "\t\t Look at the middle value");
    //println("Y-Value", quitY, "\t",  mouseY, "\t", quitX+quitHeight, "\t\t Look at the middle value");
  }//End void draw
  //
  void keyPressed() {
    if (key==' ' || key=='q')  exit();
  }//End void keyPressed
  //
  void mousePressed() {
    if ( mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight ) exit(); //basic button code
  } //End void mousePressed
  //
  //End MAIN program
