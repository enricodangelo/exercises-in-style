PImage img;
double p = 0.0;
double inc = 0.01;

void setup() {
  size(500, 500);
  img = loadImage("Can-the-lost-tapes-500x500.jpg");
}

void draw() {
  loadPixels(); 
  // Since we are going to access the image's pixels too  
  img.loadPixels(); 
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y*width;
      
      // The functions red(), green(), and blue() pull out the 3 color components from a pixel.
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      
      if (random(1) <= (p % 1)) {
        //r = 255 - r;
        //g = 255 - g;
        //b = 255 - b;
        r = (float)(r * p ) % 255;
        g = (float)(g * p ) % 255;
        b = (float)(b * p ) % 255;
      }
      // Image Processing would go here
      // If we were to change the RGB values, we would do it here, before setting the pixel in the display window.
      
      // Set the display pixel to the image pixel
      pixels[loc] =  color(r,g,b);          
    }
  }
  updatePixels();
  
  p += inc;
}
