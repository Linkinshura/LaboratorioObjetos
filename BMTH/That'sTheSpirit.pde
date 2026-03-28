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

  // Curva superior grande
  arc(cx, cy, 320, 210, PI, TWO_PI);

  // Curvas superiores internas
  arc(cx - 80, cy, 160, 160, PI, TWO_PI);
  arc(cx, cy, 160, 180, PI, TWO_PI);
  arc(cx + 80, cy, 160, 160, PI, TWO_PI);

  // Curva inferior izquierda
  bezier(cx - 160, cy + 40,
         cx - 120, cy + 80,
         cx - 40, cy + 10,
         cx, cy + 40);

  // Curva inferior derecha
  bezier(cx, cy + 40,
         cx + 40, cy + 10,
         cx + 120, cy + 80,
         cx + 160, cy + 40);

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