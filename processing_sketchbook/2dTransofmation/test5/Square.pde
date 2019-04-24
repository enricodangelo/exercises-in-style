public class Square {
  
  private int edge = 15;
  private int x;
  private int y;
  private boolean isSpinning;
  private color[] colors = {color(255, 255, 0), color(0, 204, 136), color(0, 194, 204), color(191, 245, 0), color(255, 0, 191)};
  
  
  private color myColor;

  public Square(int x, int y, boolean isSpinning) {
    this.x = x;
    this.y = y;
    this.isSpinning = isSpinning;
    
    myColor = colors[(int)random(0.0, colors.length)];
  }

  public void draw() {
    pushMatrix();
    if(isSpinning) {
      
      translate(x, y);
      rotate(radians(frameCount * 10));
    } else {
      translate(x, y);
    }
    //int colorIndex = (int)random(0.0, colors.length);
    //stroke(colors[colorIndex]);
    //fill(colors[colorIndex]);
    
    stroke(myColor);
    fill(myColor);
    rect(0, 0, edge, edge);
    popMatrix();
  }
}
