Mover[] movers = new Mover[5];
/* coefficente di attrito */
float mu = 0.01;
float normalForce = 1;

void setup() {
  size(800, 400);

  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  } 
  background(255);
}

void draw() {
  background(255);

  PVector wind = new PVector(0.01, 0);
  PVector gravity = new PVector(0, 0);

  for (int i = 0; i < movers.length; i++) {
    /* gravita' */
    gravity.y = 0.1 * movers[i].mass;
    movers[i].applyMassProportionalForce(gravity);

    /* vento */
    movers[i].applyMassProportionalForce(wind);

    /* attrito */
    PVector friction = movers[i].velocity.get();
    friction.normalize();
    friction.mult(-1);
    float frictionMagnitude = mu * normalForce;
    friction.mult(frictionMagnitude);
    movers[i].applyMassProportionalForce(friction);

    /* aggiorna la posizione */
    movers[i].update();
    /* ridisegna*/
    movers[i].display();
  }
}

