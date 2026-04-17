int cantidad = 10;
int separacion;

void setup() {
  size(800, 600);
  separacion = width / cantidad;
  noLoop();
}

void draw() {
  background(255);
  
  // Dibujar líneas
  for (int i = 0; i < cantidad; i++) {
    float xArriba = i * separacion + separacion / 2;
    
    for (int j = 0; j < cantidad; j++) {
      float xAbajo = j * separacion + separacion / 2;
      
      line(xArriba, 0, xAbajo, height);
    }
  }
  
  // Dibujar puntos arriba
  fill(0);
  for (int i = 0; i < cantidad; i++) {
    float x = i * separacion + separacion / 2;
    ellipse(x, 0, 8, 8);
  }
  
  // Dibujar puntos abajo
  for (int i = 0; i < cantidad; i++) {
    float x = i * separacion + separacion / 2;
    ellipse(x, height, 8, 8);
  }
}