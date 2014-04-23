
// These are just dummy functions. 
// Please implement them.



///////
//RED//
///////

PImage red(PImage img) {

  
  Timer.start();
  
  // get image dimensions
  int w = img.width;
  int h = img.height;
  
  // create a target image
  PImage target = createImage(w, h, RGB);
  


  // let the pixel pushing begin!
  for(int y = 0; y < h; y++) {
    for(int x = 0; x < w; x++) {
      
      // just copy the pixel from the source to the target
      // this is where you do all the crazy per pixel operations
      target.set(x, y, color(red(img.get(x, y)),0,0));
      
    }
  }
  
  Timer.stop("copy pixels easy");


  return target;
}

////////////////
// GREEN- Fast//
////////////////


PImage green(PImage img) {
  
  Timer.start();
  
  // get image dimensions
  int w = img.width, h = img.height;
  
  // create a target image
  PImage img2 = createImage(w, h, RGB);
  
  // tell the source image you are about to read pixels
  img.loadPixels();
  
  // let the pixel pushing begin!
  for(int y = 0; y < h; y++) {
    for(int x = 0; x < w; x++) {
      
      // just copy the pixel from the source to the target
      // this is where you do all the crazy per pixel operations
      img2.pixels[y * w + x] = img.pixels[y * w + x];
      img2.set(x, y, color(0,green(img.get(x, y)),0));
    }
  }
  
  // tell the target image you are done writing pixels 
  img2.updatePixels();
  
  Timer.stop("copy pixels fast");
  
  return img2;
  
}

  
/////////////
//BLUE-FAST//
/////////////


PImage blue(PImage img) {
  
  Timer.start();
  
  // get image dimensions
  int w = img.width, h = img.height;
  
  // create a target image
  PImage img2 = createImage(w, h, RGB);
  
  // tell the source image you are about to read pixels
  img.loadPixels();
  
  // let the pixel pushing begin!
  for(int y = 0; y < h; y++) {
    for(int x = 0; x < w; x++) {
      
      // just copy the pixel from the source to the target
      // this is where you do all the crazy per pixel operations
      img2.pixels[y * w + x] = img.pixels[y * w + x];
      img2.set(x, y,color(0,0,blue(img.get(x, y))));
    }
  }
  
  // tell the target image you are done writing pixels 
  img2.updatePixels();
  
  Timer.stop("copy pixels fast");
  
  return img2;
  
}






