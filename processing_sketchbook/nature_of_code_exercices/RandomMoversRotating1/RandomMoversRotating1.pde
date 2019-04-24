MoverRotating1[] movers = new MoverRotating1[20];

Attractor a;

void setup() {
  size(800,200);
  smooth();
  background(255);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new MoverRotating1(random(0.1,2),random(width),random(height)); 
  }
  a = new Attractor();
}

void draw() {
  //background(255);
  
  rectMode(CORNER);
  noStroke();
  //fill(255,5);
  fill(255);
  rect(0,0,width,height);
  
  a.display();

  for (int i = 0; i < movers.length; i++) {
    PVector force = a.attract(movers[i]);
    movers[i].applyForce(force);

    movers[i].update();
    movers[i].display();
  }

}
