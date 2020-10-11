import processing.pdf.*;
PImage img;  // Declare variable "a" of type PImage
PFont f;
String fileName = "Salieabs";

void setup() 
{
  size(700, 700);
  //noLoop(); 
  fileName = str(year()) +'/'+ str(month()) + '/' + str(day()) + '/' + str(hour()) + ':' +str(minute()) + ':' + str(second());
  beginRecord(PDF, fileName);
  noSmooth();
  fill(0);
  background(255);
  img = loadImage("head.png");  // Load the image into the program
  image(img, 40, 0, img.width/2, img.height/2);
  //f = createFont("SourceCodePro-Regular.ttf", 24);
  //textFont(f);
  text("www.salieabs.com",100,690);
}

void draw() 
{
  if (mousePressed)
  {
        stroke(0);
        circle(mouseX, mouseY, 3);
  }
}
void keyPressed() 
{
  if (key == 's') 
  {
    endRecord();
    println("Recording stopped.");
    fileName = str(year()) +'/'+ str(month()) + '/' + str(day()) + '/' + str(hour()) + ':' +str(minute()) + ':' + str(second());
    println(fileName);  
    beginRecord(PDF, fileName+".pdf");
}
  else if (key == 'c') 
  {
    background(255);
    img = loadImage("head.png");  // Load the image into the program
    image(img, 50, 0, img.width/2, img.height/2);
    println("Screen Cleared.");
  }
}
