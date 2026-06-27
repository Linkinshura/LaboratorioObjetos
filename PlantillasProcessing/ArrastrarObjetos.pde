Objeto[] objetos = new Objeto[5];
Objeto seleccionado = null;

void setup() {
  size(800, 600);

  for (int i = 0; i < objetos.length; i++) {
    objetos[i] = new Objeto(
      random(100, width - 100),
      random(100, height - 100),
      50
    );
  }
}

void draw() {
  background(220);

  for (Objeto o : objetos) {
    o.mostrar();
  }
}

void mousePressed() {
  // Recorremos de atrás hacia adelante
  for (int i = objetos.length - 1; i >= 0; i--) {
    if (objetos[i].estaSobre(mouseX, mouseY)) {
      seleccionado = objetos[i];
      seleccionado.offsetX = mouseX - seleccionado.x;
      seleccionado.offsetY = mouseY - seleccionado.y;
      break;
    }
  }
}

void mouseDragged() {
  if (seleccionado != null) {
    seleccionado.x = mouseX - seleccionado.offsetX;
    seleccionado.y = mouseY - seleccionado.offsetY;
  }
}

void mouseReleased() {
  seleccionado = null;
}

class Objeto {
  float x, y;
  float radio;
  float offsetX, offsetY;

  Objeto(float x, float y, float radio) {
    this.x = x;
    this.y = y;
    this.radio = radio;
  }

  void mostrar() {
    fill(100, 180, 255);
    stroke(0);
    ellipse(x, y, radio * 2, radio * 2);
  }

  boolean estaSobre(float mx, float my) {
    return dist(mx, my, x, y) < radio;
  }
}
