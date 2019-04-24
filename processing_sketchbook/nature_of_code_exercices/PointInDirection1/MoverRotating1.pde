class MoverRotating1 {

  // The Mover tracks location, velocity, and acceleration 
  PVector location;
  PVector velocity;
  PVector acceleration;
  // The Mover's maximum speed
  float topspeed;
  float angle;

  MoverRotating1(float x, float y) {
    // Start in the center
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    topspeed = 5;
  }

  void update() {

    // Compute a vector that points from location to mouse
    PVector mouse = new PVector(mouseX, mouseY);
    PVector acceleration = PVector.sub(mouse, location);
    // Set magnitude of acceleration
    //acceleration.setMag(0.2);
    acceleration.normalize();
    acceleration.mult(0.2);

    // Velocity changes according to acceleration
    velocity.add(acceleration);
    // Limit the velocity by topspeed
    velocity.limit(topspeed);
    // Location changes by velocity
    location.add(velocity);
  }
  void display() {
    angle = atan2(velocity.y, velocity.x);

    stroke(0);
    fill(175, 200);
    pushMatrix();
    rectMode(CENTER);
    translate(location.x, location.y);
    rotate(angle);
    rect(0, 0, 30, 20);
    popMatrix();
  }
}
