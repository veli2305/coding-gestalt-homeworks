PImage img;

Thinning t;

void setup() {
  size (400, 400);
  img=loadImage("ant.png");
  
  frameRate(5);
}

void draw() {

  //create object of the class Thining
  t = new Thinning();
   
   // This part needs to be put out to make it interactive
   t.thinStart();
  // update the pixels 
  img.updatePixels();
  // Display the result
  image(img, 0, 0);
}

//this part needs to be active to make it interactive
//INTERACTIVE 1 click = 1 pixel less

/*void mousePressed() {
  t.thinStart();
}
*/
