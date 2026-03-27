int numCirculos = 18;
float radioGrande = 200;
float radioChico = 80;

void setup() {
  size(800, 800);
  background(10, 20, 40);
  noFill();
  stroke(255);
}

void draw() {
  background(10, 20, 40);
  translate(width/2, height/2);

  // Círculo exterior
  stroke(255, 80, 80);
  strokeWeight(4);
  ellipse(0, 0, radioGrande*2, radioGrande*2);

  // Círculos interiores
  stroke(255);
  strokeWeight(1.5);

  for (int i = 0; i < numCirculos; i++) {
    float angulo = TWO_PI / numCirculos * i;
    float x = cos(angulo) * radioChico;
    float y = sin(angulo) * radioChico;

    ellipse(x, y, radioGrande, radioGrande);
  }
}