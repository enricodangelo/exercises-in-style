ArrayList<Point> points = new ArrayList<Point>();

void setup() {
  //dimensioni dello schermo
  //size(displayWidth, displayHeight);
  size(400, 800);
  filter(BLUR, 6);
}

//fullscreen
boolean sketchFullScreen() {
  //return true;
  return false;
}

void draw() {
  //background(240, 240, 240);
  background(236, 118, 88);
  
  for (Point p: points) {
    p.draw();
  }
}

//pulisce lo schermo
void mousePressed() {
  switch(mouseButton) {
    case CENTER:
      points = new ArrayList<Point>();
      break;
  } 
}

void mouseDragged() {
  points.add(new Point(mouseX, mouseY));
}
