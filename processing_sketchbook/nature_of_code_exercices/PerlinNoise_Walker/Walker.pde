// Daniel Shiffman
// The Nature of Code
// http://www.shiffman.net/

// A random walker object!

class Walker {
  int x, y;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void render() {
    stroke(0);
    strokeWeight(2);
    point(x, y);
  }

  // Randomly move up, down, left, right, or stay in one place
  void step() {

    float r = random(1);

    if (r < 0.5) {  //50% verso il mouse
      r = random(1);
      if (r < 0.5) { //50% muovo X
        if (mouseX <= x) {
          x--;
        } 
        else {
          x++;
        }
      } 
      else {  //50% muovo Y
        if (mouseY <= y) {
          y--;
        } 
        else {
          y++;
        }
      }
    }
    else {  //50% mi muovo random, 25% per ogni direzione
      r = random(1);
      if (r < 0.25) {    
        x++;
      } 
      else if (r < 0.5) {
        x--;
      } 
      else if (r < 0.75) {
        y++;
      } 
      else {
        y--;
      }
    }

    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
}

