 float pingPong =0;
 float baseR = 0;
 

void setup() {
  size(600,600);
}
void draw() {
  background(0);
  fill(#E358FF);
for (int j =1; j<=34; j++) {
    float numOfVertx = 10;
    float degUnit = 360.0/(float)numOfVertx;
    beginShape();
    for (float i=0; i<=(numOfVertx+2); i = i+1.0) {
      float index = i;
      if (i>(numOfVertx-1)||i<=2) {
        index = numOfVertx;
      }
      float pingPong = sin(radians(millis()/17.2+index*6.7+11*j));
      float baseR = 4.0*j+4.0*j*noise(millis()/5000.0+5.3*index);
      float r = baseR+ pingPong*baseR*0.3;
      float rad = radians(i*degUnit);
      float x = width/2+r*cos(rad);
      float y = height/2+r*sin(rad);
      curveVertex(ceil(x), ceil(y));
    }
    endShape();
  }
} 
void display(){
  strokeWeight(2);
  stroke(255);
  noFill();
  }
