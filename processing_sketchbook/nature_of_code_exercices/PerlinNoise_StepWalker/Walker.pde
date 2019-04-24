class Walker {
  float x, y;
  float stepX, stepY;
  int stepMax = 20;

  float tx, ty;

  Walker() {
    tx = 0;
    ty = 10000;
    x = width / 2;
    y = height / 2;
  }

  void step() {
    stepX = map(noise(tx), 0, 1, 0, stepMax);
    stepY = map(noise(ty), 0, 1, 0, stepMax);

    tx += 0.01;
    ty += 0.01;
  }
  
  void move() {
    step();
    
    int choice = int(floor(random(8)));
    if (choice == 0) {  //SW
      x -= stepX;
      y -= stepY;
    } else if (choice == 1) {  //S
      y -= stepY;
    } else if (choice == 2) {  //SE
      x += stepX;
      y -= stepY;
    } else if (choice == 3) {  //W
      x -= stepX;
    } else if (choice == 4) {  //E
      x += stepX;
    } else if (choice == 5) {  //NW
      x -= stepX;
      y += stepY;
    } else if (choice == 6) {  //N
      x += stepX;
    } else if (choice == 7) {  //NE
      x += stepX;
      y += stepY;
    }
    
    if (x < 0) {
      x = 0;
    }
    if (x > width) {
      x = width;
    }
    if (y < 0) {
      y = 0;
    }
    if (y > height) {
      y = height;
    }
    
    x = Math.round(x);
    y = Math.round(y);
    
    System.out.println(x + ", " + y);
  }  
  
  void render() {
    stroke(random(255), random(255), random(255));
    strokeWeight(10);
    
    point(x, y);
    //ellipse(x, y, 16, 16);
  }
}

