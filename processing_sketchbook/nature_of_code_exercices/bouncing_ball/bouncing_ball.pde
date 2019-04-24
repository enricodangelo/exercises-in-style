Mover m;

void setup() {
  size(800,300);
  smooth();
  background(255);
  
  m = new Mover();
}
 
void draw() {
  background(255);
 
  m.update();
  m.display();
}

class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  Mover() {
    //location = new PVector(random(width),random(height));
    //velocity = new PVector(random(5),random(5));
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(-0.001,0.01);
  }
  
  void update() {
//    acceleration.x = random(-1, 1);
//    acceleration.y = random(-1, 1);
    acceleration = updateAcceleration();
    
    velocity.add(acceleration);
    location.add(velocity);
    checkEdges();
  }
  
  private void checkEdges() {
    if ((location.x > width) || (location.x < 0)) {
      velocity.x *= -1;
    }
    if ((location.y > height) || (location.y < 0)) {
      velocity.y *= -1;
    }
  }
  
  private PVector updateAcceleration() {
    PVector mouse = new PVector(mouseX,mouseY);
    PVector direction = PVector.sub(mouse,location);
    direction.normalize();
    direction.mult(random(0.5));
    
    return direction;
  }
 
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,16,16);
  }
 
}

