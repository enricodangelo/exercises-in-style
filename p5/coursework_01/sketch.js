function setup() {
  createCanvas(1024, 768);
  background(0);
}

function draw() {
  noStroke();
  
  fill(59, 62, 43);
  rect(25, 0, 35, 185);
  
  fill(72, 96, 70);
  rect(60, 0, 45, 185);
  
  fill(80, 87, 69);
  rect(105, 0, 40, 185);
  
  fill(93, 132, 111);
  rect(145, 0, 40, 185);
  
  fill(99, 133, 108);
  rect(185, 0, 50, 185);
  
  fill(119, 119, 111);
  rect(235, 0, 115, 185);

  fill(99, 164, 130);
  rect(350, 85, 640, 335);
  
  fill(67, 91, 67);
  beginShape();
  vertex(650, 0);
  vertex(950, 0);
  vertex(990, 70);
  vertex(885, 160);
  vertex(885, 85);
  vertex(650, 85);
  endShape();
  
  fill(118, 181, 154);
  beginShape();
  vertex(350, 0);
  vertex(650, 0);
  vertex(750, 160);
  vertex(350, 185);
  endShape();
  
  fill(85, 138, 120);
  beginShape();
  vertex(950, 0);
  vertex(1024, 0);
  vertex(1024, 43);
  vertex(990, 70);
  endShape();
  
  fill(86, 167, 160);
  beginShape();
  vertex(990, 70);
  vertex(1024, 43);
  vertex(1024, 160);
  vertex(990, 160);
  endShape();
  
  fill(112, 175, 166);
  beginShape();
  vertex(990, 70);
  vertex(990, 160);
  vertex(885, 160);
  endShape();
  
  fill(119, 153, 128);
  rect(0, 185, 47, 135);

  fill(101, 113, 89);
  rect(47, 185, 58, 255);
  
  fill(67);
  rect(105, 185, 40, 315);
  
  fill(111, 110, 89);
  beginShape();
  vertex(0, 320);
  vertex(47, 320);
  vertex(47, 440);
  vertex(20, 680);
  vertex(0, 680);
  endShape();
}