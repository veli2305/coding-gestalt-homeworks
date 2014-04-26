PImage img;
PImage muscle;

Thinning t;
Muscle m;

void setup() {
  size (400, 400);
  img=loadImage("ant.png");
  muscle=loadImage("ant.png");
  frameRate(5);
}

void draw() {

  //create object of the class Thining / Muscle

  m=new Muscle();
  t = new Thinning();
  
  
  // This part needs to be put out to make it interactive
  //must be off to create muscle
  //t.skeleton();
  
  
  // update the pixels 
  img.updatePixels();

  // Display the result
  image(img, 0, 0);
}

//this part needs to be active to make it interactive

void mousePressed() {
  t.skeleton();
}
void keyPressed() {
  m.muscleStart();
}

