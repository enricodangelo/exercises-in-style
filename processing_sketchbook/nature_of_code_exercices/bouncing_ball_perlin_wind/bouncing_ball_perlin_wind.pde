Mover[] m;
long time = 0;

void setup() {
  size(800, 300);
  smooth();
  background(255);

  //m = new Mover[ceil(random(10))];
  m = new Mover[1];
  for (int i = 0; i < m.length; i++) {
    m[i] = new Mover();
  }
}

void draw() {
  background(255);

  //controllo la direzione del vento
  int direction;
  if (random(2) == 1) {
    direction = -1;
  } 
  else {
    direction = 1;
  }

  //controllo l'intensita' del vento
  PVector wind = new PVector(map(noise(time), 0, 1, -3.5, 3.5), 0);

  wind.mult(direction);
  //System.out.println("Wind = " + wind);
  for (int i = 0; i < m.length; i++) {
    m[i].setWind(wind);
  }

  for (int i = 0; i < m.length; i++) {
    m[i].update();
    m[i].display();
  }

  time += 1;
}

