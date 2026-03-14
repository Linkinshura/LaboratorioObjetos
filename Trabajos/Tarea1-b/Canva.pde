void setup() {
  size(600, 800);
}

void draw() {
  background(135, 206, 235); // cielo

  Calle();
  Casa(width*0.2, height*0.55);
  Casa(width*0.7, height*0.55);
  Sol(width*0.85, height*0.15);
}

void Calle() {
  fill(50);
  rect(0, height*0.65, width, height*0.35);

  stroke(255);
  strokeWeight(height*0.01);

  for (int i = 0; i < 10; i++) {
    float x = width*0.1 + i*(width*0.08);
    line(x, height*0.82, x + width*0.04, height*0.82);
  }

  noStroke();
}

void Casa(float x, float y) {
  fill(200, 100, 100);
  rect(x, y, width*0.15, height*0.15);

  fill(150, 50, 50);
  triangle(x, y, x + width*0.075, y - height*0.1, x + width*0.15, y);

  fill(255);
  rect(x + width*0.05, y + height*0.07, width*0.04, height*0.08);
}

void Sol(float x, float y) {
  fill(255, 204, 0);
  ellipse(x, y, width*0.1, width*0.1);
}
