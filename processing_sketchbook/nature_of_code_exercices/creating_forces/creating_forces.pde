Mover[] movers = new Mover[100];

void setup() {
  size(640, 360);


  for (int i = 0; i < movers.length; i++) {
    //movers[i] = new Mover(random(0.1, 1), 0, 0);
    movers[i] = new Mover(random(0.1, 1), random(width), random(height));
  }

  drawBackground();
}

void drawBackground() {
  background(240, 240, 240);
}

void draw() {
  drawBackground();

  //PVector wind = new PVector(0.01, 0);
  PVector wind = new PVector(random(0.01, 0.1), 0);
  PVector gravity = new PVector(0, 0.1);

  for (int i = 0; i < movers.length; i++) {
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);
    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }
}

