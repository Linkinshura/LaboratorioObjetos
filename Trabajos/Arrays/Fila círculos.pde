int cantidad = 6;
float radioInicial = 5;

void setup() {
  size(800, 200);
  noLoop();
}

void draw() {
  background(255);
  
  float x = 20;
  float radio = radioInicial;
  
  for (int i = 0; i < cantidad; i++) {
    float diametro = radio * 2;
    
    ellipse(x + radio, height / 2, diametro, diametro);
    
    // avanzar en x considerando el tamaño del círculo
    x += diametro + 10;
    
    // duplicar el radio
    radio *= 2;
  }
}