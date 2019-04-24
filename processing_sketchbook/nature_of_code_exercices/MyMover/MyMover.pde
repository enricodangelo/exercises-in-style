
MyMover w;

void setup() {
  size(800,400);
  // Create a walker object
  w = new MyMover();
  background(255);
}

void draw() {
  // Run the walker object
  w.applyForce(new PVector(random(5), random(5)));
  w.update();
  //w.checkEdges();
  w.display();
}


class MyMover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;

  MyMover() {
    mass = 1;
    location = new PVector(30, 30);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    checkEdges();
    acceleration.mult(0);
  }

  void display() {
    stroke(0);
    //fill(175);
    fill(random(255), random(255), random(255));
    ellipse(location.x, location.y, mass*16, mass*16);
  }

  void checkEdges() {
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } 
    else if (location.x < 0) {
      velocity.x *= -1;
      location.x = 0;
    }

    if (location.y > height) {
      velocity.y *= -1;
      location.y = height;
    }
  }
}

