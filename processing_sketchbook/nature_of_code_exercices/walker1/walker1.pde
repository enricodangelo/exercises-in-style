Walker[] walkers;

void setup() {
  size(640,360);
  walkers = new Walker[floor(random(20)) + 1];
  for(int i = 0; i < walkers.length; i++) {
    walkers[i] = new Walker("w" + i);
  }
  background(128);
}

void draw() {
  for(int i = 0; i < walkers.length; i++) {
    walkers[i].step();
    walkers[i].display();
  }
}

class Walker {
  int stepInc = 2;
  String name;
  PVector position;
  color walkerColor;
  
  Walker(String name) {
    this.name = name;
    position = new PVector(floor(random(width)), floor(random(height)));
    walkerColor = color(random(255), random(255), random(255));
  }
  
  void display() {
    System.out.println(name + "@(" + position.x +"," + position.y + ")");
    stroke(walkerColor);
    point(position.x, position.y);
    
    point(position.x - 1, position.y - 1);
    point(position.x, position.y - 1);
    point(position.x + 1, position.y - 1);
    point(position.x - 1, position.y);
    point(position.x + 1, position.y);
    point(position.x - 1, position.y + 1);
    point(position.x, position.y + 1);
    point(position.x + 1, position.y + 1);
  }
  
  void step() {
    int choice = int(floor(random(8)));
    if (choice == 0) {  //NW
      position.x -= stepInc;
      position.y -= stepInc;
    } else if (choice == 1) {  //N
      position.y -= stepInc;
    } else if (choice == 2) {  //NE
      position.x += stepInc;
      position.y -= stepInc;
    } else if (choice == 3) {  //W
      position.x -= stepInc;
    } else if (choice == 4) {  //E
      position.x += stepInc;
    } else if (choice == 5) {  //SW
      position.x -= stepInc;
      position.y += stepInc;
    } else if (choice == 6) {  //S
      position.y += stepInc;
    } else if (choice == 7) {  //SE
      position.x += stepInc;
      position.y += stepInc;
    }
  }  
}
