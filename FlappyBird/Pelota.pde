class Pelota {
  PVector pos;
  PVector vel;
  float r = 20;
  color c = color(255, 255, 0);
  int estado = 0;

  Pelota(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(0, 0);
  }

  void addFuerza(PVector fuerza) {
    vel.add(fuerza);
  }

  void mover() {
    pos.add(vel);
    vel.limit(10);
  }

  void mostrar() {
    fill(c);
    circle(pos.x, pos.y, r * 2);
  }

  void rebotar() {
    if (pos.y > height - r) {
      pos.y = height - r;
      perder();
    }

    if (pos.y < r) {
      pos.y = r;
      perder();
    }
  }

  void saltar() {
    vel.y = -9;
  }
}
