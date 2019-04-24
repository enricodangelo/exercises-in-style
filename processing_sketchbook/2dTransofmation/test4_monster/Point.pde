public class Point {
  
  private int edge = 15;
  private int x;
  private int y;
  private color black = color(27, 28, 32);
  private int alphaGap = 5;
  private int alpha1 = 100;
  private int alpha2 = 150;
  private int alpha3 = 200;

  public Point(int x, int y) {
    this.x = x;
    this.y = y;
  }

  public void draw() {
    pushMatrix();
    translate(x, y);
//    stroke(black, alpha1);
//    fill(black, alpha1);
//    ellipse(0, 0, edge, edge);
//    stroke(black, alpha2);
//    fill(black, alpha2);
//    ellipse(0, 0, edge - (alphaGap * 1), edge - (alphaGap * 1));
//    stroke(black, alpha3);
//    fill(black, alpha3);
//    ellipse(0, 0, edge - (alphaGap * 2), edge - (alphaGap * 2));
//    stroke(black);
//    fill(black);
//    ellipse(0, 0, edge - (alphaGap * 3), edge - (alphaGap * 3));

    //stroke(black, 80);
    //fill(black, 80);
    stroke(black);
    fill(black);
    ellipse(0, 0, edge, edge);
    popMatrix();
  }
}
