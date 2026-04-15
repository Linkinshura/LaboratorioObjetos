int cols = 16;
int rows = 9;
float cellW, cellH;

boolean[][] estados;

void setup() {
  size(800, 450);
  
  cellW = width / (float)cols;
  cellH = height / (float)rows;
  
  estados = new boolean[cols][rows];
}

// Un Winston me arruino la noche y estoy haciendo esto, que hago con mi vida? Creo que la locura me supera a veces

void draw() {
  background(200);
  
  // Recorrer la grilla
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      
      float x = i * cellW;
      float y = j * cellH;
      
       if (estados[i][j] == false) {
        fill(255);
        stroke(0);
        rect(x, y, cellW, cellH);
      } else {
        dibujarEstampa(x, y, cellW, cellH);
      }
    }
  }
}

void mousePressed() {
  
  int col = int(mouseX / cellW);
  int row = int(mouseY / cellH);
  
  
  if (col >= 0 && col < cols && row >= 0 && row < rows) {
    
    estados[col][row] = !estados[col][row];
  }
}


void dibujarEstampa(float x, float y, float w, float h) {
  pushMatrix();
  translate(x, y);
  
  // Fondo
  fill(50, 150, 200);
  noStroke();
  rect(0, 0, w, h);
  
  
  fill(255);
  ellipse(w/2, h/2, w*0.5, h*0.5);
  
  stroke(255);
  line(0, 0, w, h);
  line(w, 0, 0, h);
  
  popMatrix();
}
