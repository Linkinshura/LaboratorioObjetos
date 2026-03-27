void setup() {
  size(800, 800);
  background(0);
  textAlign(CENTER);
}

void draw() {
  background(0);

  // Círculo gris grande
  noStroke();
  fill(180);
  ellipse(width/2, height/2, 500, 500);

  // Símbolo central
  stroke(0);
  strokeWeight(8);
  noFill();

  float cx = width/2;
  float cy = height/2;
  float r = 180;

  // Líneas del símbolo
  for (int i = 0; i < 6; i++) {
    float ang = TWO_PI / 6 * i;
    float x = cx + cos(ang) * r;
    float y = cy + sin(ang) * r;
    line(cx, cy, x, y);
  }

  // Hexágono interior
  beginShape();
  for (int i = 0; i < 6; i++) {
    float ang = TWO_PI / 6 * i;
    float x = cx + cos(ang) * 80;
    float y = cy + sin(ang) * 80;
    vertex(x, y);
  }
  endShape(CLOSE);

  // Texto arriba
  fill(255);
  textSize(40);
  text("SEMPITERNAL", width/2, 80);

  // Texto abajo
  textSize(20);
  text("BRING ME THE HORIZON", width/2, height - 50);
}