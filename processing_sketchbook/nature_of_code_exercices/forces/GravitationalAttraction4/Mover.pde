class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  float G;

  Mover() {
    mass = random(5, 10);
    //location = new PVector(30, 30);
    location = new PVector(random(width), 30);
    velocity = new PVector(1, 0);
    acceleration = new PVector(0, 0);
    G = random(0.1, 1);
  }

  void applyMassProportionalForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }

  void applyForce(PVector force) {
    acceleration.add(force);
  }

  PVector attract(Mover m) {
    PVector force = PVector.sub(location, m.location);
    float distance = force.mag();
    distance = constrain(distance, 5.0, 25.0);

    force.normalize();
    float strength = (G * mass * m.mass) / (distance * distance);
    force.mult(strength);
    force.mult(-1);

    System.out.println("Attractor force: " + force);

    return force;
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
    stroke(0, 0, 0, 0);
    fill(10, 80, 120, 80);
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

