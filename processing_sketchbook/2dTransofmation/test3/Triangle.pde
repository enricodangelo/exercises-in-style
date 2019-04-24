public class Triangle {
  
  private int edge = 15;
  private int x;
  private int y;
  private boolean isSpinning;
  private color[] colors = {color(0, 204, 136), color(0, 194, 204), color(191, 245, 0), color(255, 0, 191)};

  public Triangle(int x, int y, boolean isSpinning) {
    this.x = x;
    this.y = y;
    this.isSpinning = isSpinning;
  }

  public void draw() {
    pushMatrix();
    if(isSpinning) {
      translate(x, y);
      //rotate(PI/4);
      rotate(radians((frameCount * 20) % 360));
    } else {
      translate(x, y);
    }
    int colorIndex = (int)random(0.0, colors.length);
    stroke(colors[colorIndex]);
    fill(colors[colorIndex]);
    triangle(edge/2, 0, 0, edge, edge, edge);
    popMatrix();
  }
}
