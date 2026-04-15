int cols = 12;
int rows = 8;
float cellW, cellH;

// [col][row][lado]
boolean[][][] celdas;

void setup() {
  size(720, 480);
  
  cellW = width / (float)cols;
  cellH = height / (float)rows;
  
  celdas = new boolean[cols][rows][6];
  
  // Random
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      for (int k = 0; k < 6; k++) {
        celdas[i][j][k] = random(1) > 0.5;
      }
    }
  }
}

void draw() {
  background(255);
  stroke(0);
  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      
      float x = i * cellW;
      float y = j * cellH;
      
      // Arriba
      if (celdas[i][j][0]) {
        line(x, y, x + cellW, y);
      }
      
      // Derecha
      if (celdas[i][j][1]) {
        line(x + cellW, y, x + cellW, y + cellH);
      }
      
      // Abajo
      if (celdas[i][j][2]) {
        line(x, y + cellH, x + cellW, y + cellH);
      }
      
      // Izquierda
      if (celdas[i][j][3]) {
        line(x, y, x, y + cellH);
      }
      
      // Diagonal 
      if (celdas[i][j][4]) {
        line(x, y, x + cellW, y + cellH);
      }
      
      // Diagonal 
      if (celdas[i][j][5]) {
        line(x + cellW, y, x, y + cellH);
      }
    }
  }
}
