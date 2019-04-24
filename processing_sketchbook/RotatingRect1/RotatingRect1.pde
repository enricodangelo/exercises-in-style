float rectWidth = 40;
float rectHeight = 40;
int angle = 0;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  smooth();
  fill(192);
  noStroke();
  
  pushMatrix();
  
  // move the origin to the pivot point
  translate(width / 2, height / 2); 

  // then pivot the grid
  rotate(radians(angle));
  angle += 5;
  
  rect(0 - rectWidth/2, 0 - rectHeight/2, rectWidth, rectHeight);
  
  // and draw the square at the origin
  fill(0);

  popMatrix();
}
