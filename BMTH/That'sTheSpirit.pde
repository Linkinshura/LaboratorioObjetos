void setup() {
  size(600, 800);
  smooth();
}

void draw() {
  background(0);

  stroke(255);
  strokeWeight(8);
  noFill();
  strokeCap(ROUND);

  float cx = width/2;
  float cy = 300;

  // Curva superior izquierda
  bezier(cx - 150, cy,
         cx - 120, cy - 90,
         cx - 40, cy - 90,
         cx, cy);

  // Curva superior derecha
  bezier(cx, cy,
         cx + 40, cy - 90,
         cx + 120, cy - 90,
         cx + 150, cy);

  // Curvas interiores superiores
  bezier(cx - 75, cy,
         cx - 70, cy - 60,
         cx - 20, cy - 60,
         cx, cy);

  bezier(cx, cy,
         cx + 20, cy - 60,
         cx + 70, cy - 60,
         cx + 75, cy);

  // Curva inferior izquierda
  bezier(cx - 150, cy,
         cx - 120, cy + 50,
         cx - 40, cy + 50,
         cx, cy);

  // Curva inferior derecha
  bezier(cx, cy,
         cx + 40, cy + 50,
         cx + 120, cy + 50,
         cx + 150, cy);

  // Mango
  line(cx, cy, cx, cy + 220);

  // Gotas
  drawDrop(cx - 110, cy + 120);
  drawDrop(cx - 30, cy + 150);
  drawDrop(cx + 40, cy + 140);
  drawDrop(cx + 110, cy + 110);

  // Texto
  fill(255);
  noStroke();
  textAlign(CENTER);
  textSize(20);
  text("THAT'S THE SPIRIT", cx, 650);
}

void drawDrop(float x, float y) {
  stroke(255);
  strokeWeight(6);
  noFill();

  beginShape();
  vertex(x, y - 10);
  bezierVertex(x - 7, y - 2, x - 7, y + 10, x, y + 13);
  bezierVertex(x + 7, y + 10, x + 7, y - 2, x, y - 10);
  endShape(CLOSE);
}