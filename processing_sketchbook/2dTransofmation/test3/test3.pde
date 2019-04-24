//ArrayList<Square> squares = new ArrayList<Square>();
ArrayList<Triangle> triangles = new ArrayList<Triangle>();

void setup() {
  //dimensioni dello schermo
  //size(displayWidth, displayHeight);
  size(400, 800);
}

//fullscreen
boolean sketchFullScreen() {
  //return true;
  return false;
}

void draw() {
  background(240, 240, 240);
  //background(236, 118, 88);
  
  for (Triangle t: triangles) {
    t.draw();
  }
}

//pulisce lo schermo
void mousePressed() {
  switch(mouseButton) {
    case CENTER:
      triangles = new ArrayList<Triangle>();
      break;
  } 
}

void mouseDragged() {
  switch(mouseButton) {
    case LEFT:
      //questi non girano
      triangles.add(new Triangle(mouseX, mouseY, false));
      break;
    case RIGHT:
      //questi girano
      triangles.add(new Triangle(mouseX, mouseY, true));
      break;
  } 
}
