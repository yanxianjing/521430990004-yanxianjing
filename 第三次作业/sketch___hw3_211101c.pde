int xPos=0;
void setup(){
size(600,600);

}
void draw(){
  background(70);
  line(0,300,600,300);//hon
  line(0,400,600,400);//hon
  line(300,0,300,600);//ver
  line(400,0,400,600);//ver
  strokeWeight(5);
  fill(235);
  rect(150,400,150,150);
  fill(88);
  rect(400,150,100,150);
  fill(154);
  rect(400,400,50,600);
  rect(200,240,100,60);
  fill(123);
  rect(500,0,100,210);
  rect(0,0,200,200);
  fill(40);
  rect(200,0,100,240);
  fill(40);
  rect(150,550,150,150);
  rect(450,550,150,80);
rect(300,300,100,100);
  fill(200);
  rect(xPos,height/2,150,100);//honrizontal
  rect(height/2,xPos,100,150);//vertical
  xPos+=4;
}
