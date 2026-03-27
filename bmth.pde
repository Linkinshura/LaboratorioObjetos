float r = 55;
int filas = 8;
int cols = 8;

void setup() {
  size(800, 800);
  smooth();
}

void draw() {
  background(0); // fondo negro
  
  translate(width/2, height/2);
  
  // Brillo exterior rojo
  noFill();
  stroke(255, 40, 0, 80);
  strokeWeight(25);
  ellipse(0, 0, 540, 540);
  
  // Aro exterior
  stroke(255, 60, 0);
  strokeWeight(8);
  ellipse(0, 0, 520, 520);
  
  // Segundo aro
  stroke(255, 120, 60);
  strokeWeight(3);
  ellipse(0, 0, 480, 480);

  // Patrón interior
  stroke(255);
  strokeWeight(1.5);
  
  float h = r * sqrt(3);

  for (int x = -cols; x <= cols; x++) {
    for (int y = -filas; y <= filas; y++) {
      
      float xPos = x * r * 1.5;
      float yPos = y * h + (x % 2) * h/2;
      
      if (dist(xPos, yPos, 0, 0) < 240) {
        ellipse(xPos, yPos, r*2, r*2);
      }
    }
  }
}