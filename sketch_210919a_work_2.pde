void setup(){
  size(600,600);
  background(255);
    noStroke();
     fill(0,255,0);
     frameRate(3);
 //rect(120, 80, 220, 220);
  
  //float bX_,float bY_,float bD_
  
}
  
  void draw ()
{
  //random(0,255);
  line(random(0.0),0,random(0,350),random(0,350));
  fill( random(0,255),random(0,255),random(0,255),100);
// stroke(20,30,55);
 stroke(random(0,255),random(0,255),random(0,255),100);
  strokeWeight(10);
  //float(20);
 //rect( random(0,800), random(0,800),random(0,255),random(0,255));
 ellipse(random(300,600),random(0,300),random(0,150), random(0,150));
 rect(random(0,300),random(300,600),random(0,150), random(0,150));
 beginShape();
 vertex(random(300,600),random(300,600));
  vertex(random(300,600),random(300,600));
  vertex(random(300,600),random(300,600));
 
  endShape();
}
