PImage img;

void setup() {
  size(600, 600);
  frameRate(1);
  img = loadImage("Can-the-lost-tapes-200x200.jpg");
}

void draw() {
  loadPixels();
  img.loadPixels();
  
  for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++ ) {
      int imgLoc = x + (y * img.width);
      int loc1 = (x * (height / img.height)) + (((y * (width / img.width)) + 0) * width);
      int loc2 = (x * (height / img.height)) + (((y * (width / img.width)) + 1) * width);
      int loc3 = (x * (height / img.height)) + (((y * (width / img.width)) + 2) * width);
      
      //System.out.println(img.width + "x" + img.height);
      //System.out.println(imgLoc + " => " + loc1 + ", " + loc2 + ", " + loc3);
      float r = red(img.pixels[imgLoc]);
      float g = green(img.pixels[imgLoc]);
      float b = blue(img.pixels[imgLoc]); 
  
      //pixels[loc1] = img.pixels[imgLoc];
      //pixels[loc1 + 1] = img.pixels[imgLoc];
      //pixels[loc1 + 2] = img.pixels[imgLoc];
      
      //pixels[loc2] = img.pixels[imgLoc];
      //pixels[loc2 + 1] = img.pixels[imgLoc];
      //pixels[loc2 + 2] = img.pixels[imgLoc];
      
      //pixels[loc3] = img.pixels[imgLoc];
      //pixels[loc3 + 1] = img.pixels[imgLoc];
      //pixels[loc3 + 2] = img.pixels[imgLoc];
      
      pixels[loc1] = color(r, 0, 0);
      pixels[loc1 + 1] = color(0, g, 0);
      pixels[loc1 + 2] = color(0, 0, b);
      
      pixels[loc2] = color(r, 0, 0);
      pixels[loc2 + 1] = color(0, g, 0);
      pixels[loc2 + 2] = color(0, 0, b);
      
      pixels[loc3] = color(r, 0, 0);
      pixels[loc3 + 1] = color(0, g, 0);
      pixels[loc3 + 2] = color(0, 0, b);
      
    }
  }
  updatePixels();
}

