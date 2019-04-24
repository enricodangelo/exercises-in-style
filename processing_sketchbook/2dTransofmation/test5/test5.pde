ArrayList<Square> squares = new ArrayList<Square>();

void setup() {
  //dimensioni dello schermo
  //size(displayWidth, displayHeight);
  size(400, 800);
  rectMode(CENTER);
}

//fullscreen
boolean sketchFullScreen() {
  //return true;
  return false;
}

void draw() {
  background(240, 240, 240);
  
  for (Square s: squares) {
    s.draw();
  }
}

//pulisce lo schermo
void mousePressed() {
  switch(mouseButton) {
    case LEFT:
      //questi non girano
      squares.add(new Square(mouseX, mouseY, false));
      break;
    case RIGHT:
      //questi girano
      squares.add(new Square(mouseX, mouseY, true));
      break;
    case CENTER:
      squares = new ArrayList<Square>();
      break;
  } 
}

void mouseDragged() {
  switch(mouseButton) {
    case LEFT:
      //questi non girano
      squares.add(new Square(mouseX, mouseY, false));
      break;
    case RIGHT:
      //questi girano
      squares.add(new Square(mouseX, mouseY, true));
      break;
  } 
}
