ArrayList<Square> squares = new ArrayList<Square>();

void setup() {
 size(400, 600);
}

void draw() {
  background(240, 240, 240);
  
  for (Square s: squares) {
    s.draw();
  }
}

void mousePressed() {
  switch(mouseButton) {
    case CENTER:
      squares = new ArrayList<Square>();
      break;
    case LEFT:
      Square l = new Square(mouseX, mouseY, false);
      squares.add(l);
      break;
    case RIGHT:
      Square r = new Square(mouseX, mouseY, true);
      squares.add(r);
      break;
  } 
}
