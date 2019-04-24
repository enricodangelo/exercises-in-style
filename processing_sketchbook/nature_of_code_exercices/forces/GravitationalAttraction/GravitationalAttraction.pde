Mover[] movers = new Mover[1];
Attractor attractor;

/* universal gravitational constant */
//float G = 1;

/* densita' del liquido */
//float rho = 0.01;

void setup() {
  size(800, 400);

  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  }

  attractor = new Attractor();
}

void draw() {
  background(255);

  attractor.display();

  for (int i = 0; i < movers.length; i++) {
    PVector attractionForce = attractor.attract(movers[i]);
    movers[i].applyMassProportionalForce(attractionForce);

    movers[i].update();
    movers[i].display();
  }
}

