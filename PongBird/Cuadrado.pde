class Cuadrado {
  PVector pos;
  float ancho;
  float alto;
  PVector vel;

  Cuadrado(float x, float y, float w, float h) {
    pos = new PVector(x, y);
    ancho = w;
    alto = h;
    vel = new PVector(0, 0);
  }

  Cuadrado(float x, float y, float w, float h, float vx, float vy) {
    pos = new PVector(x, y);
    ancho = w;
    alto = h;
    vel = new PVector(vx, vy);
  }

  void mover() {
    pos.add(vel);
  }

  void mover(float vx, float vy) {
    pos.x += vx;
    pos.y += vy;
  }

  void dibujar() {
    rect(pos.x, pos.y, ancho, alto);
  }

  void mostrar() {
    dibujar();
  }

  boolean colisiona(Circulo c) {
    float cercanoX = constrain(c.pos.x, pos.x, pos.x + ancho);
    float cercanoY = constrain(c.pos.y, pos.y, pos.y + alto);

    float dx = c.pos.x - cercanoX;
    float dy = c.pos.y - cercanoY;

    return dx * dx + dy * dy < c.radio * c.radio;
  }

  boolean contiene(float x, float y) {
    return x >= pos.x &&
           x <= pos.x + ancho &&
           y >= pos.y &&
           y <= pos.y + alto;
  }
}
