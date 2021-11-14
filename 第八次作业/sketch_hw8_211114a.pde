float x,y,r;
float xspeed,yspeed;
void setup()
{size(400,400);
x=20;
y=20;
r=10;
xspeed=12;
yspeed=5;
}
void draw()
{
  background(#58EDFF);
  fill(#FF86B4);
  ellipse(x,y,r,r);
  x+=xspeed;
  y+=yspeed;
  if(x<=0){
    xspeed*=-1;
    r+=4;
  }
  if(x>=width){
    xspeed*=-1;
    r+=4;
  }
  if(y<=0){
    yspeed*=-1;
    r+=4;
  }
  if(y>height){
    yspeed*=-1;
    r+=4;
  }
}
