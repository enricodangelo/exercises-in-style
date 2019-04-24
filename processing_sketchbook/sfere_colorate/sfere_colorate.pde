void setup() {
  size(800, 800);
  smooth();
}
void draw() {
  if (mousePressed) {
    fill(0);
  } 
  else {
    fill(random(255), random(255), random(255));
  }
  ellipse(mouseX, mouseY, 80, 80);
}

