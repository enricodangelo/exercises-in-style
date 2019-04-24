class SZCubus extends SuperCreature {

  float cSize; // size of the body
  PVector fPos, fAng;
  
  int segments;    // the number of segments for each tentacle
  float bLen;      // start length of each segment
  float aFreq;     // frequency
  float bOffs;     // offset for the tentacle pairs
  float angRange;  // min and max angle for the tentacles

  public SZCubus() {
    creatureAuthor  = "Steve Zissou";  // your name here, Steve
    creatureName    = "Cubus";         // the creature’s one goes here 
    creatureVersion = "1.0";           // a string of your choice
    setDate(2012, 9, 24); //Y,M,D      // just to keep track

    cSize = random(6, 30);             // each creature will have a slightly different size
    
    fPos = new PVector(random(-0.002, 0.002), random(-0.002, 0.002), random(-0.002, 0.002));
    fAng = new PVector(random(-0.005, 0.005), random(-0.005, 0.005), random(-0.005, 0.005));
    
    segments = int(random(5,9));
    bLen = random(4, 10);
    aFreq = random(0.01, 0.1);
    bOffs = random(5);
    angRange = random(0.3, 0.6);
  }

  void move() {
    pos.x += sin(frameCount * fPos.x);
    pos.y += sin(frameCount * fPos.y);
    pos.z += cos(frameCount * fPos.y);

    rot.x = sin(frameCount * fAng.x) * TWO_PI;
    rot.y = sin(frameCount * fAng.y) * TWO_PI;
    rot.z = sin(frameCount * fAng.z) * TWO_PI;
  }

  void draw() {    
    // this shortcut function just translates, rotates and scales the model matrix
    // by the values contained in the superclass PVectors pos, rot and sca
    // it could also be done by hand, 
    // for example in a case where the creature is based on a particle system
    // and drawing has to be in world coordinates.
    applyTransforms(); 

    // let’s draw the creature body: a box to hounour the creature’s name
    noFill();
    stroke(255);
    strokeWeight(1);
    box(cSize);
    
    strokeWeight(2);
    for (int j=0; j<4; j++) { //we draw four of them, on a 2d plane
      PVector p = new PVector(bLen, 0); 
      PVector pos = new PVector(cSize/2, 0); 
      float ang = sin(frameCount*aFreq + j%2 * bOffs) * angRange;
      float l = bLen;
      beginShape(); // we draw just connected segments
      for (int i=0; i<segments+1; i++) {
        vertex(pos.x, pos.y);
        pos.x += p.x;
        pos.y += p.y;
        p = rotateVec(p, ang);
        p.limit(l);
        l *= 0.93; //scale a bit the length of each segment, this factor could also be randomized
      }
      endShape();
      rotateY(HALF_PI); // rotate about 90 degrees and draw the next tentacle
    }
  }
  
  PVector rotateVec(PVector v, float angle) {
    float c = cos(angle);
    float s = sin(angle);
    return new PVector(v.x*c - v.y*s, v.x*s + v.y*c);
  }
}
