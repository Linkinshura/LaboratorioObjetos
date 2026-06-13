class Movil {

  PVector pos;
  PVector vel = new PVector(4, 3);
  PVector acel = new PVector(0, 0);
  float d = 70;
  PVector r = pos.copy();

  Movil(float origenX, float origenY) {
    pos = new PVector(origenX, origenY);
  }

  void mostrar() {
    circle(pos.x, pos.y, d);
  }

  void contener() {
    if (pos.y >= height || pos.y <= 0) {
      vel.y = vel.y * (-1);
    }

    if (pos.x >= width || pos.x <= 0) {
      vel.x = vel.x * (-1);
    }
  }

  void mover() {
    pos.add(vel);
    vel.add(acel);
    acel.mult(0);
  }

  void agregarFuerza(PVector F) {
    acel.add(F);
  }

  void alejar(PVector otro, float cuanto) {

    r.sub(otro);
    r.normalize();
    r.mult(cuanto);
    agregarFuerza(r);
  }

  boolean chocaCirculo(PVector otraPos, Float otroR) {
    float d = dist(pos.x, pos.y, otraPos.x, otraPos.y);

    if (d < (r + otroR)) {
      return true;
    } else return false;
  }
  void desacelerar(float cantidad) {
    PVector R = vel.copy();
    R.normalize();
    R.mult(cantidad);
    AsignarFuerza(R);
  }
}



