int maxPuntos = 10;

// Posiciones
float[] xs = new float[maxPuntos];
float[] ys = new float[maxPuntos];

// Tamaños
float[] tamanios = new float[maxPuntos];

// Colores
color[] colores = new color[maxPuntos];

int indice = 0;
int cantidad = 0;

void setup() {
  size(600, 400);
}

void draw() {
  background(255);

  for (int i = 0; i < cantidad; i++) {
    fill(colores[i]);
    noStroke();
    ellipse(xs[i], ys[i], tamanios[i], tamanios[i]);
  }
}

void mousePressed() {
  // Posicion guardada
  xs[indice] = mouseX;
  ys[indice] = mouseY;

  // Experimento de tamaño aleatorio
  tamanios[indice] = random(10, 50);

  // Experimento de color aleatorio
  colores[indice] = color(random(255), random(255), random(255));

  // Índice 
  indice = (indice + 1) % maxPuntos;

  if (cantidad < maxPuntos) {
    cantidad++;
  }
}
