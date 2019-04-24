int cellEdge;
int myWidth;
int myHeight;
int rows;
int cols;

final int EMPTY = 0;
final int NE_SW = 1;
final int SE_NW = 2;
final int BOTH = 3;
final int GLITCH = 4;

void setup() {
  setupVariables();
  size(myWidth, myHeight);
}

void setupVariables() {
  cellEdge = 20;
  //myWidth = 400;
  //myHeight = 600;
  myWidth = displayWidth;
  myHeight = displayHeight;
  rows = myHeight / cellEdge;
  cols = myWidth / cellEdge;
}

boolean sketchFullScreen() {
  return true;
  //return false;
}

void draw() {
  if (frameCount % 1 == 0) {
    background(60, 150, 210);
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        //System.out.println("i = " + i + ", j = " + j);
        drawCells(i, j);
      }
    }
  }
}

void drawCells(int col, int row) {
  int direction = (int)random(5);
  pushMatrix();
  translate(col * cellEdge, row * cellEdge);
  stroke(255, 170, 0);
  switch(direction) {
  case NE_SW:
    line(0, 0, cellEdge, cellEdge);
    break;
  case SE_NW:
    line(cellEdge, 0, 0, cellEdge);
    break;
  case BOTH:
    line(0, 0, cellEdge, cellEdge);
    line(cellEdge, 0, 0, cellEdge);
    break;
  case EMPTY:
    break;
  case GLITCH:
    color c = color(random(255), random(255), random(255));
    stroke(c);
    fill(c);
    rect(0, 0, cellEdge, cellEdge);
    break;
  }
  //rect(0, 0, cellEdge, cellEdge);
  popMatrix();
}

