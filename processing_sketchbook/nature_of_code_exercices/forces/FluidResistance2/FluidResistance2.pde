Mover[] movers = new Mover[5];
Liquid l1;
Liquid l2;
Liquid l3;
/* densita' del liquido */
float rho = 0.01;

void setup() {
  size(800, 600);

  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  }

  l1 = new Liquid((float)0, (float)height/2 - height/2/3, (float)width, (float)height/2/3, 0.1);
  l2 = new Liquid((float)0, (float)height/2, (float)width, (float)height/2/3, 0.3);
  l3 = new Liquid((float)0, (float)height/2 + height/2/3, (float)width, (float)height/2/3, 0.2);

  background(255);
}

void draw() {
  background(255);
  
  l1.display();
  l2.display();
  l3.display();

  PVector wind = new PVector(0.01, 0);
  PVector gravity = new PVector(0, 0);

  for (int i = 0; i < movers.length; i++) {
    /* gravita' */
    gravity.y = 0.1 * movers[i].mass;
    movers[i].applyMassProportionalForce(gravity);

    if (movers[i].isInside(l1)) {
      movers[i].drag(l1);
    }
    if (movers[i].isInside(l2)) {
      movers[i].drag(l2);
    }
    if (movers[i].isInside(l3)) {
      movers[i].drag(l3);
    }

    /* aggiorna la posizione */
    movers[i].update();
    /* ridisegna*/
    movers[i].display();
  }
}

