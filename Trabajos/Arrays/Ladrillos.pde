int columnas = 10;
int filas = 6;

float anchoLadrillo;
float altoLadrillo;

void setup() {
  size(800, 400);
  anchoLadrillo = width / columnas;
  altoLadrillo = height / filas;
  noLoop();
}

void draw() {
  background(255);
  
  for (int i = 0; i < filas; i++) {
    
    // Desplazamiento para filas alternadas
    float offset = (i % 2 == 0) ? 0 : anchoLadrillo / 2;
    
    for (int j = 0; j < columnas + 1; j++) {
      float x = j * anchoLadrillo - offset;
      float y = i * altoLadrillo;
      
      fill(180, 50, 50); // color ladrillo
      stroke(0);
      rect(x, y, anchoLadrillo, altoLadrillo);
    }
  }
}