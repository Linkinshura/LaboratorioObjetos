float xCorreo = 0;

void setup() {
  size(800, 400);
}

void draw() {
  background(200, 220, 255);

  // Persona izquierda
  dibujarPersona(100, 250);

  // Persona derecha
  dibujarPersona(700, 250);

  // Dibujar correo (sobre)
  dibujarCorreo(xCorreo, 200);

  // Movimiento del correo
  xCorreo += 2;

  if (xCorreo > 650) {
    xCorreo = 150;
  }
}

void dibujarPersona(float x, float y) {
  // Cabeza
  ellipse(x, y - 50, 40, 40);
  
  // Cuerpo
  line(x, y - 30, x, y + 40);
  
  // Brazos
  line(x, y - 10, x - 20, y + 10);
  line(x, y - 10, x + 20, y + 10);
  
  // Piernas
  line(x, y + 40, x - 15, y + 70);
  line(x, y + 40, x + 15, y + 70);
}

void dibujarCorreo(float x, float y) {
  // Sobre
  rect(x, y, 60, 40);
  
  // Línea del sobre
  line(x, y, x + 30, y + 20);
  line(x + 60, y, x + 30, y + 20);
}