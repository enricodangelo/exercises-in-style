// Create photomosaics from a source image and a directory of tile images.
// by Greg Borenstein, January 2013
//
//
// modified by Enrico D'Angelo
//
// Read more here:

// see inline comments for more details
// -------------------------------------


// Import the java libraries we need.
// These are both utilites for sorting things.
// We use them to define a custom comparison operation.
// This lets us sort our PixelImages by their brightness,
// which makes it really easy to select the right one 
// for each portion of the source image
import java.util.Comparator;
import java.util.Collections;

// Our PixelImage class
// This class stores information about each of the images
// we'll use as tiles in making up our photomosaic.
// That infomation includes the path to where the image is stored
// as well as the image's "score", i.e. its brightness level.
// We use this latter to sort an ArrayList of these PixelImages
// so that they're stored in order from darkest to brightest.
// Then, when we need to find a PixelImage that matches one of the cells
// in our source image, we can do so simply by its position in this ArrayList.
//
// One other note: this class also "caches" the image that it represents.
// Loading images from disk takes time, especially when the image is large.
// Depending on how many images we have, we end up re-using the same PixelImage
// multiple times in our mosaic. Hence, we can speed things up, by saving the image
// the first time we see it. Then, next time this same PixelImage is called for
// we're able to display the image without having to reload it from disk
// and resize it. This makes things MUCH FASTER, making it less painful to create
// photomosaics with lots of cells.
class PixelImage {
  float score;
  String path;
  PImage cache;
  boolean cached = false;

  PixelImage(float s, String p) {
    score = s;
    path = p;
  }

  // This function implements the caching of the image.
  // Instead of having outside code access the PImage or the image path directly
  // they call this function, which loads, resizes and stores the image if it's never
  // seen it before or simply displays it if it has.

  // Note how we call the PImage resize() function with a 0
  // as the argument for either the width of the height depending on
  // if the image is wide or tall. This ensures proportional resizing: http://processing.org/reference/PImage_resize_.html
  PImage image() {
    if (!cached) {
      cache = loadImage(path);

      float proportion = 1;      
      if (cache.width > cache.height) {
        cache.resize(0, cellHeight*outputScale);
      }  
      else {
        cache.resize(cellWidth*outputScale, 0);
      }
      cached = true;
    }
    return cache;
  }
}

// This is our custom comparison operation.
// Java already knows how to compare its built-in types
// like integers: by looking at which number is bigger.
// However we want to be able to sort our own custom PixelImage
// type so we have to tell Java how to compare PixelImages.
// To do that we define this special class with one function, compare()
// that takes two PixelImages as arguments. compare() returns
// 1,0, or -1 depending on which of the arguments is greater (or 
// if they are equal). We want to sort our PixelImages based
// on their score variable, so all we do is subtract those from each other
// and return the result.
// We'll see how this function is used in setup()...
class PixelImageComparator implements Comparator<PixelImage> {
  public int compare(PixelImage i1, PixelImage i2) {
    return (int)(i1.score - i2.score);
  }
}

// These are our chief variables.
// We declare them here for one of two reasons:
// 1) They are global in score (i.e. used in multiple functions).
// 2) They represent 'settings' for our sketch that we might
//    want to manipulate without having to search through all the source code.
// Mostly they're the later. Each is describe inline.
PImage sourceImage; // image to be mosaic-ed
String sourceImageFilename = "image.jpg"; // filename for our sourceImage
String imagesDirectoryName = "/home/enrico/Projects/processing_sketchbook/Photomosaic/PhotomosaicOriginal/images/";
int numCellsPerSide = 40; // increasing this, means more cells, and vice versa
int outputScale = 2; // size of photomosaic relative to original image.


int cellWidth, cellHeight; // size of each cell (calculated based on number of cells and image size)
ArrayList<PixelImage> pixelImages; // will store all the PixelImages as we load them in.

// Our setup() function.
// Since this sketch doesn't run interactively (it just runs once and produces a photomosaic)
// this is where most of the work is done. Comments inline to explain individual steps.
void setup() {
  // clear the screen to white.
  background(255);
  // load the source image
  sourceImage = loadImage(sourceImageFilename);
  // scale the canvas based on the proportions of
  // the source image, but somewhat bigger
  // (we want our final result to be nice and high res so we can see the individual tiles)
  size(sourceImage.width*2, sourceImage.height);

  // calculate the size of each cell based on the size of the sourceImage
  // and the resolution of our grid.
  cellWidth = sourceImage.width/numCellsPerSide;
  cellHeight = sourceImage.height/numCellsPerSide;

  // Now we're going to process all of the tile images
  // and create PixelImage objects for each of them.

  // First we need to get a list of all of the names of the files
  // in our images directory.
  java.io.File folder = new java.io.File(dataPath(imagesDirectoryName));
  String[] tileImageFilenames = folder.list();

  // We've now done all of our pre-processing and we're ready
  // to display our photomosaic.

  // First draw the original image, for reference.
  image(sourceImage, 0, 0);

  // Move over to the right so the photomosaic doesn't
  // overlap the source image.
  translate(sourceImage.width, 0);

  drawGreyCells();

  // Save the result as a png. The filename is based on
  // the filename of the source image and the number of cells
  // per side, which, in combination, should produce a unique result.
  saveFrame(sourceImageFilename+numCellsPerSide+".png");

  noLoop();
}

void drawGreyCells() {
  PImage workingImage = createImage(cellWidth, cellHeight, RGB);

  int i = 0; 
  int total = numCellsPerSide*numCellsPerSide;

  for (int row = 0; row < numCellsPerSide; row++) {
    for (int col = 0; col < numCellsPerSide; col++) {
      // pring progress bar and increment column counter
      println(i + "/" + total);
      i++;
      // Copy the pixels from the sourceImage into our working image.
      // The arguments to the copy() function represent the coordinates in the source image,
      // the dimensions of the area we want to copy from, the coordinates to paste into in the destination
      // image, and the dimensions we want the paste to be. For more detail: http://processing.org/reference/PImage_copy_.html  
      workingImage.copy(sourceImage, col*cellWidth, row*cellHeight, cellWidth, cellHeight, 0, 0, cellWidth, cellHeight);
      // Pass that working image into our aveBrightness() function to find the
      // average brightness of this area of our sourceImage
      float b = aveBrightness(workingImage);
      stroke(b);
      fill(b);
      //rect(col*cellWidth, row*cellHeight, cellWidth, cellHeight);
      rect(col*cellWidth, row*cellHeight, cellWidth, cellHeight, 15, 15, 15, 15);
    }
  }
}

float aveBrightness(PImage img) {
  float result = 0;
  for (int i = 0; i < img.pixels.length; i++) {
    result += brightness(img.pixels[i]);
  }

  result /= img.pixels.length;
  return result;
}

