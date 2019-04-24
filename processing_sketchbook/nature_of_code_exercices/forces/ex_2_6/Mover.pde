class Mover {
  PVector location;
  float edge;
  PVector velocity;
  PVector acceleration;
  float mass;

  Mover() {
    edge = random(2, 8);
    mass = edge * edge;
    //location = new PVector(30, 30);
    location = new PVector(random(width), random(0, height/2));
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }

  void applyMassProportionalForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }

  void applyForce(PVector force) {
    acceleration.add(force);
  }

  boolean isInside(Liquid liquid) {
    if (location.x > liquid.x 
      && location.x < liquid.x+liquid.liquidWidth
      && location.y > liquid.y
      && location.y < liquid.y+liquid.liquidHeight) {
      return true;
    } 
    else {
      return false;
    }
  }
  
  void drag(Liquid liquid) {
    float speed = velocity.mag();
    float dragMagnitude = edge * liquid.c * speed * speed;
    
    PVector drag = velocity.get();
    drag.normalize();
    drag.mult(-1);
    
    drag.mult(dragMagnitude);
    
    applyMassProportionalForce(drag);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);

    /* aggiusto la posizione */
    checkEdges();

    /* azzero l'accelerazione, altrimenti si accumulerebbe ad ogni ciclo */
    acceleration.mult(0);
  }

  void display() {
    stroke(0);
    fill(175);
    //ellipse(location.x, location.y, mass * 8, mass * 8);
    rect(location.x, location.y, edge * 10, edge * 10);
  }

  void checkEdges() {
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } 
    else if (location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }

    if (location.y > height) {
      location.y = height;
      velocity.y *= -1;
    }
  }
}

