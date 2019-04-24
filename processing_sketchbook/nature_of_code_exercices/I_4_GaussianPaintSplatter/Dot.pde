class Dot {
  int x;
  int y;
  //int c;
  color c;

  Random generator = new Random();
  double colorMean = 256.0/2.0;
  double colorSd = colorMean;
  double dotXMean = 800/2;
  double dotXSd = dotXMean/4;
  double dotYMean = 400/2;
  double dotYSd = dotYMean/4;

  void render() {
    x = new Double(Math.floor(generator.nextGaussian() * dotXSd + dotXMean)).intValue();
    y = new Double(Math.floor(generator.nextGaussian() * dotYSd + dotYMean)).intValue();
    
    c = color(
    new Double(Math.floor(generator.nextGaussian() * colorSd + colorMean)).intValue(), 
    new Double(Math.floor(generator.nextGaussian() * colorSd + colorMean)).intValue(), 
    new Double(Math.floor(generator.nextGaussian() * colorSd + colorMean)).intValue()
      );

    //System.out.println("x = " + x);
    noStroke();
    fill(c);
    ellipse(x, y, 16, 16);
  }
}

