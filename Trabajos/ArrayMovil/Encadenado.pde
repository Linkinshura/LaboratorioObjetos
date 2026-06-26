ArrayList<Movil> moviles;

void setup() {
  size(800, 600);

  moviles = new ArrayList<Movil>();

  for (int i = 0; i < 20; i++) {
    moviles.add(new Movil(random(width), random(height)));
  }
}

void draw() {
  background(30);

  for (int i = 0; i < moviles.size(); i++) {

    if (i == moviles.size() - 1) {
      moviles.get(i).seguir(mouseX, mouseY);
    } else {
      Movil objetivo = moviles.get(i + 1);
      moviles.get(i).seguir(objetivo.x, objetivo.y);
    }

    moviles.get(i).actualizar();
  }

  for (Movil m : moviles) {
    m.mostrar();
  }
}
