// 1. Realizar un programa que proyecte lineas desde el centro desde arriba y abajo

// 2. Realizar un programa que realiza una grilla de cuadrados


float filas=10;
float columnas=10;

void setup() {
  size(800, 600);
}
void draw() {
  GenerarCuadrados();
}


void GenerarCuadrados() {

  for (int i=0; i<columnas; i++) {

    float sepx= width/columnas;
    float sepy= height/filas;

    for (int j=0; j<filas; j++) {

      float x = i * sepx;
      float y= j * sepy;

      rect(x, y, sepx, sepy);
      fill(random(255),random(255),random(255));
    }
  }
}


