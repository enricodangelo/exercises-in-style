Mover[] movers = new Mover[5];
Liquid l1;
/* densita' del liquido */
float rho = 0.01;

void setup() {
  size(800, 800);

  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  }

  l1 = new Liquid((float)0, (float)height/2, (float)width, (float)height/2, 0.1);

  background(255);
}

void draw() {
  background(255);
  
  l1.display();

  PVector wind = new PVector(0.01, 0);
  PVector gravity = new PVector(0, 0);

  for (int i = 0; i < movers.length; i++) {
    /* gravita' */
    gravity.y = 0.1 * movers[i].mass;
    movers[i].applyMassProportionalForce(gravity);

    if (movers[i].isInside(l1)) {
      movers[i].drag(l1);
    }

    /* aggiorna la posizione */
    movers[i].update();
    /* ridisegna*/
    movers[i].display();
  }
}

