float cx, cy;
float r = 60;

void setup() {
  size(800, 800);
  smooth();
  cx = width/2;
  cy = height/2;
  noLoop();
}

void draw() {
  background(10, 15, 40);
  
  dibujarFlor();
  circulosExternos();
  marco();
}

void dibujarFlor() {
  stroke(212, 175, 55);
  strokeWeight(2);
  noFill();

  float h = r * sqrt(3);

  for (int fila = -4; fila <= 4; fila++) {
    for (int col = -4; col <= 4; col++) {
      
      float x = cx + col * r * 1.5;
      float y = cy + fila * h;
      
      if (col % 2 != 0) {
        y += h/2;
      }

      if (dist(x, y, cx, cy) < 250) {
        ellipse(x, y, r*2, r*2);
      }
    }
  }
}

void circulosExternos() {
  stroke(212, 175, 55);
  strokeWeight(3);
  noFill();

  ellipse(cx, cy, 520, 520);
  ellipse(cx, cy, 560, 560);
}

void marco() {
  stroke(212, 175, 55);
  strokeWeight(3);
  noFill();

  rectMode(CENTER);
  rect(cx, cy, 760, 760);

  strokeWeight(1.5);
  rect(cx, cy, 740, 740);
}