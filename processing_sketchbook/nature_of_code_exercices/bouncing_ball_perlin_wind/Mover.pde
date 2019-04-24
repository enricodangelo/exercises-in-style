class Mover {
  PVector location;
  PVector velocity;
  PVector wind;

  Mover() {
    location = new PVector(width/2, height);
    velocity = new PVector(0, -0.3);
    wind = new PVector(0, 0);
  }

  public void setWind(PVector wind) {
    //System.out.println("setWind: " + wind);
    this.wind = wind;
  }

  void update() {
    //System.out.println("Location [BEFORE] = " + location);
    location.add(velocity);
    location.add(wind);
    //System.out.println("Location [AFTER] = " + location);
    checkEdges();

    wind.mult(0);

    //System.out.println("Location [FINAL] = " + location);
  }

  private void checkEdges() {
    //System.out.println("Check: " + location);

    if (location.x > width) {
      location.x = width;
    }
    if (location.x < 0) {
      location.x = 0;
    }
    if (location.y > height) {
      location.y = height;
    }
    if (location.y < 0) {
      location.y = 0;
    }
  }

  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16, 16);
  }
}

