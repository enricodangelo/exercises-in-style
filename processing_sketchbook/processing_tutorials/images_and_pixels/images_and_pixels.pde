// Declaring a variable of type PImage
PImage can;
PImage zero;

void setup() {
  size(526,418);
  // di default cerca in "data", se non trova cerca altrove.
  can = loadImage("Can-the-lost-tapes-500x500.jpg");
  zero = loadImage("agosto_526x418.jpg");
}

void draw() {
  background(zero);
  
  tint(70, 100, 200, 127);
  // Draw the image to the screen at coordinate (0,0)
  image(can,0,0);
}
