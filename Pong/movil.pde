Pelota p;
Barra rectangulo;

void setup() {
  size(800, 600);

  p = new Pelota(100, height / 2);

  rectangulo = new Barra(
    width / 2 - 15,
    height / 2 - 60
  );
}

void draw() {
  background(0);

  p.mover();
  p.mostrar();

  boolean colision = p.ChocaConRect(
    rectangulo.pos,
    rectangulo.tamAncho,
    rectangulo.tamAlto
  );

  rectangulo.mostrar(colision);
}
