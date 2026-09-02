class Circulo {
  PVector pos;
  PVector vel;
  float radio;
  color c;

  Circulo(float x, float y, float r) {
    pos = new PVector(x, y);
    vel = new PVector(0, 0);
    radio = r;
    c = color(255);
  }

  Circulo(float x, float y, float r, float vx, float vy) {
    pos = new PVector(x, y);
    vel = new PVector(vx, vy);
    radio = r;
    c = color(255);
  }

  void mover() {
    pos.add(vel);
  }

  void dibujar() {
    fill(c);
    circle(pos.x, pos.y, radio * 2);
  }

  void mostrar() {
    dibujar();
  }

  void agregarFuerza(PVector fuerza) {
    vel.add(fuerza);
  }

  void limitarVelocidad(float maximo) {
    vel.limit(maximo);
  }

  boolean colisiona(Cuadrado cuadrado) {
    return cuadrado.colisiona(this);
  }

  void reboteVertical() {
    if (pos.y - radio <= 0) {
      pos.y = radio;
      vel.y *= -1;
    }

    if (pos.y + radio >= height) {
      pos.y = height - radio;
      vel.y *= -1;
    }
  }

  void reboteHorizontal() {
    if (pos.x - radio <= 0) {
      pos.x = radio;
      vel.x *= -1;
    }

    if (pos.x + radio >= width) {
      pos.x = width - radio;
      vel.x *= -1;
    }
  }
}
