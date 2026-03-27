float cx, cy;
float r = 40; // radio base

void setup() {
  size(800, 800);
  cx = width/2;
  cy = height/2;
  smooth();
  noLoop();
}

void draw() {
  fondo();
  patronCentral();
  circulosExternos();
  marco();
}

void fondo() {
  background(10, 15, 40);

  // textura tipo ruido
  for (int i = 0; i < 20000; i++) {
    stroke(20, 30, 60, 30);
    point(random(width), random(height));
  }
}

void patronCentral() {
  stroke(212, 175, 55);
  strokeWeight(2);
  noFill();

  int filas = 9;
  int cols = 9;

  float dx = r * sqrt(3);
  float dy = r * 1.5;

  for (int y = -filas; y <= filas; y++) {
    for (int x = -cols; x <= cols; x++) {
      float px = cx + x * dx + (y % 2) * dx/2;
      float py = cy + y * dy;

      if (dist(px, py, cx, cy) < 260) {
        ellipse(px, py, r*2, r*2);
      }
    }
  }
}

void circulosExternos() {
  noFill();
  stroke(212, 175, 55);
  strokeWeight(3);

  ellipse(cx, cy, 520, 520);
  ellipse(cx, cy, 560, 560);
}

void marco() {
  stroke(212, 175, 55);
  strokeWeight(3);
  noFill();

  rectMode(CENTER);
  rect(cx, cy, 760, 760);

  // borde interior
  strokeWeight(1.5);
  rect(cx, cy, 740, 740);

  // detalles simples en esquinas (ornamento aproximado)
  for (int i = 0; i < 4; i++) {
    pushMatrix();
    translate(cx, cy);
    rotate(HALF_PI * i);
    dibujarEsquina();
    popMatrix();
  }
}

void dibujarEsquina() {
  translate(-360, -360);

  stroke(212, 175, 55);
  strokeWeight(1);

  for (int i = 0; i < 20; i++) {
    arc(0, 0, i*10, i*10, 0, HALF_PI);
  }

  line(0, 0, 80, 0);
  line(0, 0, 0, 80);
}