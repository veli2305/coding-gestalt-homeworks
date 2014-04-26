class Muscle {


  void muscleStart() {
    rightm();
    leftm();
    upm();
    downm();
  }



  void rightm() {

    // load
    img.loadPixels();
    muscle.loadPixels();
    
    //scan
    for (int x = 1; x < (width -1); x++ ) {
      for (int y = 0; y < height; y++ ) {

        // Pixels
        int loc = x + y*img.width;
        color pix = img.pixels[loc];

        // Pixelsm
        int locm = x + y*muscle.width;
        color pixm = muscle.pixels[locm];

        // Pixels left
        int leftLoc = (x -1) + y*img.width;
        color leftPix = img.pixels[leftLoc];


        if (color(pix)==color(255, 0, 0)) {
          img.pixels[leftLoc] = color(pixm);
          img.pixels[loc] = color(pixm);
        }
        if (brightness(pix)<brightness(leftPix)) {
          img.pixels[leftLoc] = color(pixm);
        }
      }
    }
  }
}



//next


void leftm() {

  // load
  img.loadPixels();
  muscle.loadPixels();

  //scan
  for (int x = (width-2); 1<x; x-- ) {
    for (int y = 0; y < height; y++ ) {

      // Pixels
      int loc = x + y*img.width;
      color pix = img.pixels[loc];

      // Pixelsm
      int locm = x + y*muscle.width;
      color pixm = muscle.pixels[locm];

      //Pixels right
      int rightLoc = (x +1) + y*img.width;
      color rightPix = img.pixels[rightLoc];


      if (color(pix)==color(255, 0, 0)) {
        img.pixels[rightLoc] = color(pixm);
        img.pixels[loc] = color(pixm);
      }
      if (brightness(pix)<brightness(rightPix)) {
        img.pixels[rightLoc] = color(pixm);
      }
    }
  }
}

//next

void upm() {
  // load
  img.loadPixels();
  muscle.loadPixels();
  // scan
  for (int x = (width-1); 1<x; x-- ) {
    for (int y = 1; y < (height-1); y++ ) {

      //Pixels
      int loc = x + (y*img.width);
      color pix = img.pixels[loc];

      // Pixelsm
      int locm = x + y*muscle.width;
      color pixm = muscle.pixels[locm];

      // Pixels up
      int upLoc = x  + ((y-1)*img.width);
      color upPix = img.pixels[upLoc];

      if (color(pix)==color(255, 0, 0)) {
        img.pixels[upLoc] = color(pixm);
        img.pixels[loc] = color(pixm);
      }
      if (brightness(pix)<brightness(upPix)) {
        img.pixels[upLoc] = color(pixm);
      }
    }
  }
}

//next


void downm() {
  //load
  img.loadPixels();
  muscle.loadPixels();
  //scan

  for (int x = 0; x < (width -1); x++ ) {
    for (int y = (height-2); y>1; y-- ) {

      // Pixels
      int loc = x + (y*img.width);
      color pix = img.pixels[loc];

      // Pixelsm
      int locm = x + y*muscle.width;
      color pixm = muscle.pixels[locm];

      // Pixels down
      int downLoc = x  + ((y+1)*img.width);
      color downPix = img.pixels[downLoc];

      if (color(pix)==color(255, 0, 0)) {
        img.pixels[downLoc] = color(pixm);
        img.pixels[loc] = color(pixm);
      }
      if (brightness(pix)<brightness(downPix)) {
        img.pixels[downLoc] = color(pixm);
      }
    }
  }
}

