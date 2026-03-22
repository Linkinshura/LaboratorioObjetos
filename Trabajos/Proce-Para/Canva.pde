void setup() {
  size(800, 800);
}

void draw() {
  background(255);

  if (mousePressed) {
    composicion(mouseX, mouseY, 120, 120);
  }
}

void composicion(float posicionX, float posicionY, float ancho, float alto) {

  rectMode(CENTER); // Define donde dibujan rectangulos
  ellipseMode(CENTER); // Define donde dibujan elipses


  rect(posicionX, posicionY, ancho, alto);


  rect(posicionX, posicionY, ancho * 0.5, alto * 0.5);


  ellipse(posicionX, posicionY, ancho * 0.3, alto * 0.3);


  line(posicionX - ancho/2, posicionY - alto/2, posicionX + ancho/2, posicionY + alto/2);
  line(posicionX + ancho/2, posicionY - alto/2, posicionX - ancho/2, posicionY + alto/2);

 
  point(posicionX - ancho/2, posicionY - alto/2);
  point(posicionX + ancho/2, posicionY - alto/2);
  point(posicionX - ancho/2, posicionY + alto/2);
  point(posicionX + ancho/2, posicionY + alto/2);
}
