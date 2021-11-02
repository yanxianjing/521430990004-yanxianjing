int c=0;

void setup(){
  size(600,600);
  background(c);
    noStroke();
    circle(500,200,50);
 //rect(0,0,350,350);
 //rect(350,350,250,250);
     frameRate(10);
}
  
  void draw ()
{ 
  //line(random(0.0),0,random(0,350),random(0,350));
  fill( random(0,255),random(0,255),random(0,255),100);
 stroke(random(0,255),random(0,255),random(0,255),100);
  strokeWeight(10);

 //ellipse(mouseX,mouseY,random(0,150), random(0,150));
 beginShape();
 vertex(600,0);
  vertex(mouseX,mouseY);
   vertex(mouseX,mouseY);
   endShape();
 //rect(mouseX,mouseY,random(0,100), random(0,100));
 
}
