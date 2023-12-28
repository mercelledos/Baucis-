void setup() {
  size (800, 800);
  frameRate(5);
}

void draw() {
  background(#f1f1f1);
  strokeWeight(1);

  float columnaX = 10;
  float columnaY = 10;
  float ample = width/columnaX;
  float alt = height/columnaY;
  ellipseMode(CORNER);
  
  
  for (int x = 0; x < columnaX; x++) {
    for (int y = 0; y < columnaY; y++) {
      push();
      translate (x * ample, y * alt);
      
      int selector = int(random(3));
      println(selector);
      
      if (selector == 0) {
        rect(0, 0, ample, alt);
      } else if (selector == 1) {
        ellipse(0, 0, ample, alt);
      } else if (selector == 2) {
        fill (255,0,0);
        rect(0, 0, ample, alt);
      }
      
      pop();
    }
  }
}
