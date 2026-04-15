// Grilla
int cols = 20;      //  columnas
int rows = 20;      //  filas
float cellW, cellH;

// Matriz distancia
float[][] distancias;

void setup() {
  size(600, 600);
  
  // Tamaño de cada celda
  cellW = width / (float)cols;
  cellH = height / (float)rows;
  
  distancias = new float[cols][rows];
  
  noStroke();
}

// Extra: Luego de esto tratar de subir de rango en el OW

void draw() {
  background(0);
  
  
  float maxDist = dist(0, 0, width, height);
  
  // Recorrer
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      
      // Centro
      float x = i * cellW + cellW / 2;
      float y = j * cellH + cellH / 2;
      
      // Distancia Mouse
      float d = dist(mouseX, mouseY, x, y);
      
      // Guardar
      distancias[i][j] = d;
      
      // Map para escala de grises
      // Cerca = blanco (255), lejos = negro (0)
      float gris = map(d, 0, maxDist, 255, 0);
      
      fill(gris);
      
      
      rect(i * cellW, j * cellH, cellW, cellH);
    }
  }
}
