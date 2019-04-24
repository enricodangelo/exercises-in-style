int cellWidth;
int cellHeight;
int myWidth;
int myHeight;
int rows;
int cols;

void setup() {
  setupVariables();
  size(myWidth, myHeight);
}

void setupVariables() {
  cellWidth = 5;
  cellHeight = 5;
  //myWidth = 400;
  //myHeight = 600;
  myWidth = displayWidth;
  myHeight = displayHeight;
  rows = myHeight / cellHeight;
  cols = myWidth / cellWidth;
}

boolean sketchFullScreen() {
  return true;
  //return false;
}

void draw() {
  //if (frameCount % 1 == 0) {
    background(60, 150, 210);
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        drawCells(i, j);
      }
    }
  //}
}

void drawCells(int col, int row) {
  int cellColor = (int)random(2);
  //System.out.println(cellColor);
  color c = color(random(255), random(255), random(255));
  
  pushMatrix();
  translate(col * cellWidth, row * cellHeight);
  if (cellColor == 0) {
    //nero
    c = color(0, 0, 0);
    //colore random
    //c = color(random(255), random(255), random(255));
  } 
  else if (cellColor == 1) {
    //bianco
    c = color(255, 255, 255);
  }
  stroke(c);
  fill(c);
  rect(0, 0, cellWidth, cellHeight);
  popMatrix();
}

