Mover[] movers = new Mover[1];
Attractor attractor;
Attractor attractor2;

/* universal gravitational constant */
//float G = 1;

/* densita' del liquido */
//float rho = 0.01;

void setup() {
  size(800, 400);

  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  }

  //attractor = new Attractor();
  attractor = new Attractor(15.0, new PVector(width/4, height/2), 0.5);
  attractor2 = new Attractor(15.0, new PVector(width/4*3, height/2), 0.5);
  
  background(255);
}

void draw() {
  //background(255);

  attractor.display();
  attractor2.display();

  for (int i = 0; i < movers.length; i++) {
    PVector attractionForce = attractor.attract(movers[i]);
    movers[i].applyMassProportionalForce(attractionForce);
    
    attractionForce = attractor2.attract(movers[i]);
    movers[i].applyMassProportionalForce(attractionForce);

    movers[i].update();
    movers[i].display();
  }
}

