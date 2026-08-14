Pelota p;
Barra b;

void setup() {
  size(800, 600);

  p = new Pelota();

  b = new Barra(
    width / 2 - 15,
    height / 2 - 60
  );
}

void draw() {
  background(0);

  p.mover();

  boolean colision = p.ChocaConRect(
    b.pos,
    b.ancho,
    b.alto
  );


  if (colision) {
    p.vel.x *= -1;

    if (p.vel.x < 0) {
      p.pos.x = b.pos.x - p.r;
    } else {
      p.pos.x = b.pos.x + b.ancho + p.r;
    }
  }

  p.mostrar();
  b.mostrar(colision);
}
