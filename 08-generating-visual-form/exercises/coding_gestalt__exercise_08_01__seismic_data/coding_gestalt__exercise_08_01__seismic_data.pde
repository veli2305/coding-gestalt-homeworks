
float[] data;
int samples;
float zoom = 10;
float ymin = -5000000;
float ymax = 5000000;

void setup() {
  frameRate(8);
  PSacTimeSeries timeseries = new PSacTimeSeries("../../../data/seismic/Aegean_Sea/data/IU.ANTO.00.BHZ.sac");
  data = timeseries.getY();
  samples = data.length;
  
  size(int(samples/zoom), 500);
  
}

void draw() {
 background(60,60,60);
  // do something with the data here ...
  for(int i = 0; i < samples; i=i+(int (random (3,5)))) {
    float x = i / zoom;
    float y = map(data[i], ymin, ymax, 0, height);
    float size = random(5, 10);
     fill(50,100,220);

  //  stroke(y,random(100,200),220);
    //ellipse(x,y,4,4);
     //  ellipse(x,y,12,12);
     noStroke();
        fill(y*0.7,random(100,200),210,60);
   ellipse(x,y,size,size);
   

    //float y2 = map(data[i], ymin, ymax, 0, height);
     //line(x,y,x,y2+8);
    
  
  }
  
}




