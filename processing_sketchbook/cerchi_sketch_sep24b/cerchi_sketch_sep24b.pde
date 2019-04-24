int diam = 10;
float centX1, centY1;
float centX2, centY2;
float centX3, centY3;
float centX4, centY4;
boolean grow = true;
void setup() {
size(1000, 800);
	
smooth();
background(180);
centX1 = (width/8) * 4;
centY1 = (height/8) * 3;
centX2 = (width/6) * 2;
centY2 = (height/6) * 5;
centX3 = (width/12) * 10;
centY3 = (height/12) * 3;
centX4 = (width/18) * 11;
centY4 = (height/18) * 5;
stroke(0);
strokeWeight(5);
fill(255, 50);
}

void draw() {
  if (grow) {
    if (diam <= 700) {
      background(180);
      stroke(40, 15, 200);
      fill(40, 15, 200, 100);
      ellipse(centX1, centY1, diam, diam);
      stroke(128, 0, 255);
      fill(128, 0, 255, 100);
      ellipse(centX2, centY2, diam, diam);
      stroke(230, 50, 50);
      fill(230, 50, 50, 100);
      ellipse(centX3, centY3, diam, diam);
      stroke(130, 230, 10);
      fill(130, 230, 10, 100);
      ellipse(centX4, centY4, diam, diam);
      diam += 15;
    } else {
      grow = false;
    }
  } else {
    if (diam >= 0) {
      background(180);
      stroke(40, 15, 200);
      fill(40, 15, 200, 100);
      ellipse(centX1, centY1, diam, diam);
      stroke(128, 0, 255);
      fill(128, 0, 255, 100);
      ellipse(centX2, centY2, diam, diam);
      stroke(230, 50, 50);
      fill(230, 50, 50, 100);
      ellipse(centX3, centY3, diam, diam);
      stroke(130, 230, 10);
      fill(130, 230, 10, 100);
      ellipse(centX4, centY4, diam, diam);
      diam -= 15;
    } else {
      grow = true;
    }
  }
  
}

