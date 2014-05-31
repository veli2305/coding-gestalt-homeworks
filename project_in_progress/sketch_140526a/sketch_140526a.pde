float bx,by;
void setup(){
 size(1000,1000);

float ax = random(250,400); 
float m1x = random(400,600); 
float m2x = random(400,600); 
float ex = random(250,400);
float fx = random(150,300); 
float bx = random(600,750);
float cx = random(700,850);
float dx = random(600,750);

float ay = random(150,300);
float m1y = random(50,150);
float m2y = random(850,950);
float by = random(150,300);
float cy= random(300,700);
float dy = random(800,850);
float ey = random(800,850);
float fy= random(300,700);

  noStroke();
beginShape(); 
vertex(ax,ay);
vertex(m1x, m1y);
vertex(bx, by);
vertex(cx, cy);
vertex(dx, dy);
vertex(m2x, m2y);
vertex(ex,ey);
vertex(fx,fy);

endShape(CLOSE);

fill(0,180,250);

beginShape(); 
vertex(ax,ay);
vertex(ax+random(0,20), ay-random(0,5));
vertex(ax+random(25,30), ay+random(5,10));
vertex(ax+random(20,25), ay+random(15,20));
vertex(ax+random(10,15), ay+random(25,30));
vertex(ax+random(0,5), ay+random(20,25));
vertex(ax-random(0,5), ay+random(0,8));

endShape(CLOSE);
  
  
  beginShape(); 
vertex(bx,by);
vertex(bx+random(0,20), by-random(0,5));
vertex(bx+random(25,30), by+random(5,10));
vertex(bx+random(20,25), by+random(15,20));
vertex(bx+random(10,15), by+random(25,30));
vertex(bx+random(0,5), by+random(20,25));
vertex(bx-random(0,5), by+random(0,8));

endShape(CLOSE);


  beginShape(); 
vertex(ex,ey);
vertex(ex+random(0,20), ey-random(0,5));
vertex(ex+random(25,30), ey+random(5,10));
vertex(ex+random(20,25), ey+random(15,20));
vertex(ex+random(10,15), ey+random(25,30));
vertex(ex+random(0,5), ey+random(20,25));
vertex(ex-random(0,5), ey+random(0,8));

endShape(CLOSE);

}


void draw(){


}




