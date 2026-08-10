class Pelota {
  PVector pos;
  PVector vel;
  float r = 15;
  color c = color(255);

  Pelota() {
    pos = new PVector(width/2, height/2);
    vel = new PVector(4, 3);
  }

  void mover() {
    pos.add(vel);
    rebotar();
    reinicio();
  }

  void mostrar() {
    fill(c);
    noStroke();
    ellipse(pos.x, pos.y, r*2, r*2);
  }

  void rebotar() {
    if (pos.y > height - r || pos.y < r) {
      vel.y *= -1;
    }
  }

  void reinicio() {
    if (pos.x > width + r || pos.x < -r) {
      pos.set(width/2, height/2);
      vel.x *= -1;
    }
  }
boolean ChocaConRect(PVector rpos,, float rw, float rh){



return ChocaCon(PMC);
}

boolean ChocaCon(PVector otro){

}
}


