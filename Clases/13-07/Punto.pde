Punto[] puntos;
int cantidad = 10;
float rango = 300;

void setup() {
  size(800, 600);

  puntos = new Punto[cantidad];

  for (int i = 0; i < cantidad; i++) {
    puntos[i] = new Punto();
  }
}

void draw() {
  background(255);

  float cx = width/2;
  float cy = height/2;


  for (int i = 0; i < cantidad; i++) {
    puntos[i].mover();
    puntos[i].mostrar(cx, cy, rango);
  }
}
