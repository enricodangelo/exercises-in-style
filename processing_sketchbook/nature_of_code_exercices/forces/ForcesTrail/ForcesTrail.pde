Mover[] movers = new Mover[5];

void setup() {
  size(800, 400);

  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  } 
  background(255);
}

void draw() {
  background(255);
 
  PVector wind = new PVector(0.01,0);
  PVector gravity = new PVector(0, 0);
  
  for (int i = 0; i < movers.length; i++) {
    /*applica le forze*/
    gravity.y = 0.1 * movers[i].mass;
    movers[i].applyMassProportionalForce(gravity);
    
    movers[i].applyMassProportionalForce(wind);
    
    /* aggiorna la posizione */
    movers[i].update();
    /* ridisegna*/
    movers[i].display();
  }
}

