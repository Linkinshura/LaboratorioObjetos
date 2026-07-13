class Punto {

  float x, y;
  float vx, vy;

  Punto() {
    x = random(width);
    y = random(height);

    vx = random(-2, 2);
    vy = random(-2, 2);
  }

  void mover() {
    x += vx;
    y += vy;

    if (x < 0 || x > width) {
      vx *= -1;
    }

    if (y < 0 || y > height) {
      vy *= -1;
    }
  }

  void mostrar(float cx, float cy, float rango) {

    float d = dist(x, y, cx, cy);

    if (d < rango) {
      stroke(255, 150);
      line(x, y, cx, cy);
    }

    noStroke();
    fill(255);
    ellipse(x, y, 6, 6);
  }
}
