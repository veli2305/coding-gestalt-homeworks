class Thinning {

  
  void thinStart(){
    right();
    left();
    up();
    down();
    
  }
  
  
  
  void right() {

    // load
    img.loadPixels();

    //scan
    for (int x = 0; x < (width -1); x++ ) {
      for (int y = 0; y < height; y++ ) {

        // Pixels
        int loc = x + y*img.width;
        color pix = img.pixels[loc];

        // Pixels right
        int rightLoc = (x +1) + y*img.width;
        color rightPix = img.pixels[rightLoc];


        if (brightness(pix)<brightness(rightPix)) {
          img.pixels[loc] = color(255);
        }  
      }
    }
  }
  //next


  void left() {

    // load
    img.loadPixels();


    //scan
    for (int x = (width-1); 1<x; x-- ) {
      for (int y = 0; y < height; y++ ) {

        // Pixels
        int loc = x + y*img.width;
        color pix = img.pixels[loc];

        // Pixels left
        int leftLoc = (x -1) + y*img.width;
        color leftPix = img.pixels[leftLoc];


        if (brightness(pix)<brightness(leftPix)) {
          img.pixels[loc] = color(255);
        }  
      }
    }
  }



  void down() {
    // load
    img.loadPixels();

    // scan
    for (int x = (width-1); 1<x; x-- ) {
      for (int y = 1; y < (height-1); y++ ) {

        //Pixels
        int loc = x + (y*img.width);
        color pix = img.pixels[loc];

        // Pixels down
        int downLoc = x  + ((y+1)*img.width);
        color downPix = img.pixels[downLoc];

        
        if (brightness(pix)<brightness(downPix)) {
          img.pixels[loc] = color(255);
        }  
      }
    }
  }




  void up() {
    //load
    img.loadPixels();

    //scan

    for (int x = 0; x < (width -1); x++ ) {
      for (int y = (height-1); y>1; y-- ) {

        // Pixels
        int loc = x + (y*img.width);
        color pix = img.pixels[loc];

        // Pixels up
        int upLoc = x  + ((y-1)*img.width);
        color upPix = img.pixels[upLoc];

        if (brightness(pix)<brightness(upPix)) {
          img.pixels[loc] = color(255);
        }  
      }
    }
  }
}


