PImage source;       // Source image
PImage destination;  // Destination image

void setup() {
  size(500, 500);
  source = loadImage("Can-the-lost-tapes-500x500.jpg");  
  // The destination image is created as a blank image the same size as the source.
  destination = createImage(source.width, source.height, RGB);
}

void draw() {  
  //float threshold = 127;
  float threshold = 127;

  // We are going to look at both image's pixels
  source.loadPixels();
  destination.loadPixels();
  
  for (int x = 0; x < source.width; x++) {
    for (int y = 0; y < source.height; y++ ) {
      int loc = x + y*source.width;
      // Test the brightness against the threshold
      if (brightness(source.pixels[loc]) > threshold) {
        //destination.pixels[loc]  = color(255);  // White
        destination.pixels[loc]  = color(255, 127, 0);
      }  else {
        //destination.pixels[loc]  = color(0);    // Black
        destination.pixels[loc]  = color(0, 127, 255);
      }
    }
  }

  // We changed the pixels in destination
  destination.updatePixels();
  // Display the destination
  image(destination,0,0);
}