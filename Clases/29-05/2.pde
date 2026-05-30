class Movil {

  int fila;
  int columna;

  PVector pos, vel;

  int r = 40;

  Movil(int f, int c) {

    fila = f;
    columna = c;

    pos = new PVector(100 + c * 100, 100 + f * 100);

    vel = new PVector(random(-4, 4), random(-4, 4));
  }

  void mover() {
    pos.add(vel);
    contener();
  }

  void mostrar() {
    ellipse(pos.x, pos.y, r, r);
  }

  void contener() {
    if (pos.x < 0 || pos.x > width) {
      pos.sub(vel);
      vel.x *= -1;
    }

    if (pos.y < 0 || pos.y > height) {
      pos.sub(vel);
      vel.y *= -1;
    }
  }
}

Movil[][] estacionamiento;

int filas = 2;
int columnas = 3;

void setup() {

  size(800, 600);

  estacionamiento = new Movil[filas][columnas];

  for (int f = 0; f < filas; f++) {
    for (int c = 0; c < columnas; c++) {
      estacionamiento[f][c] = new Movil(f, c);
    }
  }
}

void draw() {

  background(255);

  for (int f = 0; f < filas; f++) {
    for (int c = 0; c < columnas; c++) {
      estacionamiento[f][c].mover();
      estacionamiento[f][c].mostrar();
    }
  }
}