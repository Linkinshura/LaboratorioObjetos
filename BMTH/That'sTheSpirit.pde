int cantidad = 600;
float[] x = new float[cantidad];
float[] y = new float[cantidad];
float[] vel = new float[cantidad];

PFont font;

void setup() {
  size(900, 900);
  smooth();
  
  font = createFont("Arial", 32);

  // Inicializar lluvia
  for (int i = 0; i < cantidad; i++) {
    x[i] = random(width);
    y[i] = random(height);
    vel[i] = random(6, 12);
  }
}

void draw() {
  background(0);

  drawRain();

  // Texto arriba
  fill(255);
  textAlign(CENTER);
  textFont(font);
  text("THAT'S THE SPIRIT", width/2, 80);

  // Paraguas
  pushMatrix();
  translate(width/2, height/2 + 80);
  drawUmbrella();
  popMatrix();

  // Texto abajo
  text("BRING ME THE HORIZON", width/2, height - 50);
}

void drawRain() {
  stroke(255);
  strokeWeight(1);

  for (int i = 0; i < cantidad; i++) {
    line(x[i], y[i], x[i] - 4, y[i] + 14);

    x[i] -= 0.5;
    y[i] += vel[i];

    if (y[i] > height) {
      y[i] = random(-100, 0);
      x[i] = random(width);
    }
  }
}

void drawUmbrella() {
  stroke(255);
  strokeWeight(2);
  noFill();

  // Cúpula
  arc(0, 0, 360, 360, PI, TWO_PI);

  // Bordes en picos
  line(-180, 0, -135, 35);
  line(-135, 35, -90, 0);

  line(-90, 0, -45, 35);
  line(-45, 35, 0, 0);

  line(0, 0, 45, 35);
  line(45, 35, 90, 0);

  line(90, 0, 135, 35);
  line(135, 35, 180, 0);

  // Varillas
  line(0, 0, 0, -170);
  line(0, 0, -100, -140);
  line(0, 0, 100, -140);

  // Palo
  line(0, 0, 0, 230);

  // Mango
  arc(35, 230, 70, 70, HALF_PI, PI);
}