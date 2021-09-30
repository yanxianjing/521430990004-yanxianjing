void setup(){
  size(600,600);
  background(0);
    noStroke();
 rect(0,0,350,350);
 rect(350,350,250,250);
     frameRate(10);
}
  
  void draw ()
{
  
  line(random(0.0),0,random(0,350),random(0,350));
  fill( random(0,255),random(0,255),random(0,255),100);
 stroke(random(0,255),random(0,255),random(0,255),100);
  strokeWeight(10);

 ellipse(random(300,600),random(0,600),random(0,150), random(0,150));
 rect(random(0,600),random(300,600),random(0,100), random(0,100));
 
}
