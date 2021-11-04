import java.util.Iterator;

ArrayList<StarMoveSystem> systems;

void setup() {
  size(500, 700);
  systems = new ArrayList<StarMoveSystem>();
}

void draw() { 
  float c=0;
  c=map(mouseX, 0, width, 255, 0);
  background(c);
  frameRate(80);
  for (StarMoveSystem s : systems) { //for循环
    s.run();
    s.addStarMove();
  }
}

void mousePressed() {
  systems.add(new StarMoveSystem(new PVector(mouseX, mouseY)));
}


class Star {  

  PVector star;  


  Star(PVector starLocation) {  
    star = starLocation.get();
  }

  void display() {
    beginShape();
    vertex(star.x, star.y);
    vertex(star.x + 2, star.y + 8);
    vertex(star.x + 10, star.y + 8);
    vertex(star.x + 4, star.y + 12);
    vertex(star.x + 7, star.y + 20);
    vertex(star.x, star.y + 15);
    vertex(star.x - 7, star.y + 20);
    vertex(star.x - 4, star.y + 12);
    vertex(star.x - 10, star.y + 8);
    vertex(star.x - 2, star.y + 8);
    endShape(CLOSE);
  }
}
class StarMoveSystem {

  ArrayList<StarMove> slist;
  PVector originLocation;

  StarMoveSystem(PVector location) {
    originLocation = location.get();
    slist = new ArrayList<StarMove>();
  }

  void addStarMove() {
    slist.add(new StarMove(originLocation));
  }

  void run() {
    Iterator<StarMove> it = slist.iterator();

    while (it.hasNext()) {
      StarMove s = it.next();
      s.run();
      if (s.isDead()) {
        it.remove();
      }
    }
  }
}

class StarMove { 

  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  StarMove(PVector l) {  
    location = l.get();  
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-2, 0));
    lifespan = 255.0;
  }
  void run() {  
    update();
    display();
  }
  void update() {  
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 1.0;
  }

  void display() {  
    noStroke();
    fill(random(220, 255), random(180, 255), 0);
    Star star = new Star(location);  
    star.display();
  }
  Boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
