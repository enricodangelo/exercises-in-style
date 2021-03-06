class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;

  Mover() {
    mass = random(5, 10);
    //location = new PVector(30, 30);
    location = new PVector(random(width), 30);
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
    float dragMagnitude = liquid.c * speed * speed;
    
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
    ellipse(location.x, location.y, mass * 8, mass * 8);
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

