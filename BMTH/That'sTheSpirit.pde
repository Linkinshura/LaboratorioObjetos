PImage logo;

void setup() {
  size(600, 800);
  logo = loadImage("logo.png");
}

void draw() {
  background(0);
  
  // Imagen de referencia
  tint(255, 255, 255);
  image(logo, 0, 0, width, height);
  noTint();

  stroke(255);
  strokeWeight(8);
  noFill();
  strokeCap(ROUND);

  float cx = width/2;

  // Texto
  fill(255);
  noStroke();
  textAlign(CENTER);
  textSize(20);
  text("THAT'S THE SPIRIT", cx, 750);
  text("BRING ME THE HORIZON", cx, 100);
}

void drawDrop(float x, float y) {
  stroke(255);
  strokeWeight(6);
  noFill();

  beginShape();
  vertex(x, y - 10);
  bezierVertex(x - 7, y - 2, x - 7, y + 10, x, y + 13);
  bezierVertex(x + 7, y + 10, x + 7, y - 2, x, y - 10);
  endShape(CLOSE);
}
