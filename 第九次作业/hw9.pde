PImage Carol;
void setup(){
  size(600,600);
Carol = loadImage("WeChat Image_20210923204950.jpg");
Carol.resize(width,height);
noStroke();
background(0);
Carol.loadPixels();
//frameRate(200);
}
void draw(){
  int x = (int)random(0, Carol.width);
  int y =(int)random(0, Carol.height);
  color  c= Carol.pixels[y * Carol.width + x];
  
  int dotSize = 10;
  int opacity =10;
  fill(c,200);
  rect(x,y,dotSize,opacity);
}
