
import controlP5.*;
PVector v2;
ControlP5 ver, hor, ver2, hor2, ver3, hor3, ver4, hor4;

int myColor = color(0, 0, 0);

float a = random(300, 500);
float b =random(400, 600)  ;
float c = random(600, 750) ;
float d = random(500, 700);
float e = random(350, 650);
float f = random(700, 900);
float g = random(100, 400);
float h= random(500, 700);


///////////////////////////

void setup() {
  size(1000, 1000);
  noStroke();


  /////////////SLIDERS/////////

  ver = new ControlP5(this);

  ver.addSlider("a")
    .setPosition(100, 50)
      .setRange(300, 500)
        .setColorForeground(color(100, 0, 100))
          .setColorActive(color(155, 0, 150))
            ;

  hor = new ControlP5(this);

  hor.addSlider("b")
    .setPosition(100, 70)
      .setRange(350, 650)
        .setColorForeground(color(100, 0, 100))
          .setColorActive(color(155, 0, 150))
            ;


  ver2 = new ControlP5(this);

  ver2.addSlider("c")
    .setPosition(100, 90)
      .setRange(500, 900)

        ;

  hor2 = new ControlP5(this);

  hor2.addSlider("d")
    .setPosition(100, 110)
      .setRange(400, 800)

        ;


  ver3 = new ControlP5(this);

  ver3.addSlider("e")
    .setPosition(100, 130)
      .setRange(350, 650)
        .setColorForeground(color(180, 0, 150))
          .setColorActive(color(205, 0, 200))
            ;

  hor3 = new ControlP5(this);

  hor3.addSlider("f")
    .setPosition(100, 150)
      .setRange(700, 900)
        .setColorForeground(color(180, 0, 150))
          .setColorActive(color(205, 0, 200))
            ;

  ver4 = new ControlP5(this);

  ver4.addSlider("g")
    .setPosition(100, 170)
      .setRange(100, 500)
        .setColorForeground(color(0, 100, 200))
          .setColorActive(color(0, 100, 250))
            ;

  hor4 = new ControlP5(this);

  hor4.addSlider("h")
    .setPosition(100, 190)
      .setRange(400, 800)
        .setColorForeground(color(0, 100, 200))
          .setColorActive(color(0, 100, 250))
            ;
}








void draw() {



  background(80);

  fill(210);

  beginShape();
  curveVertex(b-50, a+50);
  curveVertex(b, a);
  curveVertex(b+50, a+50);

  curveVertex(c-50, d-50);
  curveVertex(c, d);
  curveVertex(c-50, d+50);

  curveVertex(e+50, f-50);
  curveVertex(e, f);
  curveVertex(e-50, f-50);

  curveVertex(g+50, h+50);
  curveVertex(g, h);
  curveVertex(g+50, h-50);

  ////
  curveVertex(b-50, a+50);
  curveVertex(b, a);
  curveVertex(b+50, a+50);
  endShape();
  
  
  
//////////////////////



 fill(110);

  beginShape();
 
  curveVertex(b+30, a-50);
  curveVertex(b, a);
  curveVertex(b+50, a+50);

  curveVertex(c-50, d-50);
  curveVertex(c, d);
  curveVertex(c-50, d+50);

  curveVertex(e+50, f-50);
  curveVertex(e, f);
  curveVertex(e+150, f+20);

  curveVertex(c+180,f+50);
  curveVertex(c+70, a-100);
  curveVertex(b, a-80);

  ////
   curveVertex(b+30, a-50);
  curveVertex(b, a);
  curveVertex(b+50, a+50);
  endShape();
  
}
