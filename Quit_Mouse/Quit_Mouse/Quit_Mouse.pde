//Global Variables
String title = "Exit";
PFont titleFont;
int titleSize;
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio=0.0, imageHeightRatio=0.0, picWidthAdjusted, picHeightAdjusted;
float imageLargerDimension, imageSmallerDimension;
PImage pic;
Boolean widthLarger=false, heightLarger=false;
float quitY, quitX, quitHeight, quitWidth;
color purple=#A435C4, pink=#FF03C9, resetButtonColor=#FFFFFF, buttonFill=#E3E3E3, neon=#00F4FF, resetDefaultInk=#FFFFFF; //Not night mode friendly colours
//
void setup() {
  size (500, 500);
  //
  //Population
  pic = loadImage("/Users/danielhamilton/Documents/GitHub/Creating-Buttons/Images Used/Landscape and Square Images/Neon.jpg");
  int picWidth = 850;
  int picHeight = 638;
  float centerX = width /2; //Centering the width
  float centerY = height/2; //Centering the height
  float centeringButtonWidth = width*1/4;
  float centeringButtonHeight = height*1/4;
  quitY = centerY - centeringButtonHeight;
  quitX = centerX - centeringButtonWidth;
  quitHeight = width*1/2; 
  quitWidth = height*1/2; 
  //
  if ( picWidth >= picHeight ) { //Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension = picWidth;
    imageSmallerDimension = picHeight;
    widthLarger = true;
  } else {
    //False if Portrait
    imageLargerDimension = picHeight;
    imageSmallerDimension = picWidth;
    heightLarger = true;
  }//End Image Dimension Comparison
  println(imageSmallerDimension, imageLargerDimension, widthLarger, heightLarger); //Verify variables details
  //
  if ( widthLarger == true ) imageWidthRatio = imageLargerDimension / imageLargerDimension;
  if ( widthLarger == true ) imageHeightRatio = imageSmallerDimension / imageLargerDimension;
  if ( heightLarger == true ) imageWidthRatio = imageSmallerDimension / imageLargerDimension;
  if ( heightLarger == true ) imageHeightRatio = imageLargerDimension / imageLargerDimension;
  //
  imageX = width*0;
  imageY = height*0;
  imageWidth = width+1; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  imageHeight = height+1;
  //
  picWidthAdjusted = imageWidth * imageWidthRatio;
  picHeightAdjusted = imageHeight * imageHeightRatio;
  println(imageX, imageY, picWidthAdjusted, picHeightAdjusted); //Note: println() also verifies decimal places, complier will truncate
  //
  String[] fontList = PFont.list(); 
  printArray(fontList);
  titleFont = createFont("TimesNewRomanPSMT", 50);
}//End void setup
//
void draw () {

  //Hover-Over
  image(pic, imageX, imageY, imageWidth, imageHeight);
  if (mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight) {
    buttonFill = purple;
  } else {
    buttonFill = pink;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, rememeber that night mode adds choice
  rect (quitY, quitX, quitHeight, quitWidth);
  fill(resetButtonColor);
  fill(neon);
  textAlign(CENTER, CENTER);
  titleSize = 25;
  textFont(titleFont, titleSize);
  text(title, quitY, quitX, quitHeight, quitWidth);
  fill(resetDefaultInk);
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
