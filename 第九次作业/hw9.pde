PImage Carol;
void setup(){
  size(600,500);//可以自定义照片大小
Carol = loadImage("WeChat Image_20210923204950.jpg"); //把想要的图片输入到""里
Carol.resize(width,height);
noStroke();
background(0);
Carol.loadPixels();
frameRate(200);
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
