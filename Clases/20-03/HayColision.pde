float r;

float posX;
float posY;

void setup() {
  size(800, 600);
  background(255);

  r = random(100, 400);
  posX = random(width);
  posY = random(height);
}

void draw() {
  if (hayColision(posX, posY, r)) {
    fill(#A70E13);
  } else {
    fill(255);
  }
  circle(posX, posY, r);
}

boolean hayColision(float x, float y, float r) {
r = r /2;

  float d = dist(mouseX, mouseY, x, y);

  if (d > r) {
    return false;
  } else {
    return true;
  }
}
