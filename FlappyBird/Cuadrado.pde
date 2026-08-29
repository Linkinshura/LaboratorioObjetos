class Cuadrado {
  PVector pos;
  int tamAlto = 120;
  int tamAncho = 30;

  color cNormal = color(#42F51B);

  Cuadrado(float x, float y) {
    pos = new PVector(x, y);
  }

  void mostrar() {
    fill(cNormal);

    noStroke();
    rect(pos.x, pos.y, tamAncho, tamAlto);
  }

  void mover() {
  }
}
