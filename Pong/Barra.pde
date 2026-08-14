class Barra {
  PVector pos;
  int tamAlto = 120;
  int tamAncho = 30;

  color cNormal = color(255);
  color cColision = color(255, 0, 0);

  Barra(float x, float y) {
    pos = new PVector(x, y);
  }

  void mostrar(boolean colision) {
    if (colision) {
      fill(cColision);
    } else {
      fill(cNormal);
    }

    noStroke();
    rect(pos.x, pos.y, tamAncho, tamAlto);
  }
}
