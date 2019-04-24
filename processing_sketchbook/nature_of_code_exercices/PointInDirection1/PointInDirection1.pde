MoverRotating1[] movers = new MoverRotating1[20];

void setup() {
  size(800,600);
  smooth();
  background(255);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new MoverRotating1(random(width),random(height)); 
  }
}

void draw() {
  //background(255);
  
  rectMode(CORNER);
  noStroke();
  //fill(255,5);
  fill(55, 137, 148, 5);
  rect(0,0,width,height);
  

  for (int i = 0; i < movers.length; i++) {
    movers[i].update();
    movers[i].display();
  }

}
