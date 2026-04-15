int n = 20;
float[] valores;
float anchoBarra;

void setup() {
  size(800, 400);
  valores = new float[n];
  anchoBarra = width / (float)n;
}

void draw() {
  background(30);
  
  for (int i = 0; i < n; i++) {
    float x = i * anchoBarra;
    float h = valores[i];
    
    fill(100, 200, 255);
    rect(x, height - h, anchoBarra - 2, h);
  }
}

void mousePressed() {
  actualizarBarra();
}

void mouseDragged() {
  actualizarBarra();
}

void actualizarBarra() {
  int indice = int(mouseX / anchoBarra);
  
  if (indice >= 0 && indice < n) {
    float h = height - mouseY;
    valores[indice] = constrain(h, 0, height);
  }
}
