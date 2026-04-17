int filas = 8;
int columnas = 8;
int tamañoCelda;

void setup() {
  size(400, 400);
  tamañoCelda = width / columnas;
  noLoop();
}

void draw() {
  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      
      // Alternar colores
      if ((i + j) % 2 == 0) {
        fill(255); // blanco
      } else {
        fill(0); // negro
      }
      
      rect(j * tamañoCelda, i * tamañoCelda, tamañoCelda, tamañoCelda);
    }
  }
}