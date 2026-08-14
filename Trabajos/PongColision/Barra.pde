class Barra {
  PVector pos;

  int ancho = 30;
  int alto = 120;

  color colorNormal = color(255);
  color colorColision = color(255, 0, 0);

  Barra(float x, float y) {
    pos = new PVector(x, y);
  }

  void mostrar(boolean colision) {
    if (colision) {
      fill(colorColision);
    } else {
      fill(colorNormal);
    }

    noStroke();
    rect(pos.x, pos.y, ancho, alto);
  }
}
