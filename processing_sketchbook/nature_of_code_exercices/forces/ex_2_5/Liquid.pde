class Liquid {
  /* coordinate dell'angolo in alto a sx del liquido piu' altezza e larghezza */
  float x, y, liquidWidth, liquidHeight;
  /* coefficente di viscosita' */
  float c;
  color liquidColor;
  
  Liquid(float x, float y, float liquidWidth, float liquidHeight, float c) {
    this.x = x;
    this.y = y;
    this.liquidWidth = liquidWidth;
    this.liquidHeight = liquidHeight;
    this.c = c;
    liquidColor = color(random(255), random(255), random(255));
  }
  
  void display() {
    noStroke();
    fill(liquidColor);
    rect(x, y, liquidWidth, liquidHeight);
  }
}
