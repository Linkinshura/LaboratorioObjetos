float r = 55;     // radio de los círculos pequeños
int filas = 8;
int cols = 8;

void setup() {
  size(800, 800);
  smooth();
}

void draw() {
  background(10, 20, 40);
  
  translate(width/2, height/2);
  
  // Aro exterior grande
  noFill();
  stroke(255, 80, 80);
  strokeWeight(8);
  ellipse(0, 0, 520, 520);
  
  // Segundo aro
  strokeWeight(3);
  ellipse(0, 0, 480, 480);

  // Patrón Flower of Life
  stroke(255);
  strokeWeight(1.5);
  
  float h = r * sqrt(3);

  for (int x = -cols; x <= cols; x++) {
    for (int y = -filas; y <= filas; y++) {
      
      float xPos = x * r * 1.5;
      float yPos = y * h + (x % 2) * h/2;
      
      // Solo dibujar los que están dentro del círculo grande
      if (dist(xPos, yPos, 0, 0) < 240) {
        ellipse(xPos, yPos, r*2, r*2);
      }
    }
  }
}