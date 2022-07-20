//Global Variables
float quitY, quitX, quitHeight, quitWidth;
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
  rect (quitY, quitX, quitHeight, quitWidth);
}//End void draw
//
void keyPressed() {
 if (key==' ' || key=='q')  exit();
}//End void keyPressed
//
void mousePressed() {
} //End void mousePressed
//
//End MAIN program
