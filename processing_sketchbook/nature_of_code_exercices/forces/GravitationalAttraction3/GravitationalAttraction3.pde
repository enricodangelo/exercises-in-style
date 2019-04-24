Mover[] movers = new Mover[2];

/* universal gravitational constant */
//float G = 1;

/* densita' del liquido */
//float rho = 0.01;

void setup() {
  size(800, 400);

  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  }
}

void draw() {
  background(255);
  
  PVector attractionForce;

  for (int i = 0; i < movers.length; i++) {
    for (int j = 0; j < movers.length; j++) {
      if (i != j) {
        System.out.println("i = " + i + ", j = " + j);
        attractionForce = movers[j].attract(movers[i]);
        movers[i].applyMassProportionalForce(attractionForce);
      }
    }
    movers[i].update();
    movers[i].display();
  }
}

