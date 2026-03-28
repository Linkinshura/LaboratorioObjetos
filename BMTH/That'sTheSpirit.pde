void setup() {
  size(600, 800);
}

void draw() {
  background(0);
  
  stroke(255);
  strokeWeight(8);
  noFill();

  // Parte superior
  arc(width/2, 300, 320, 210, PI, TWO_PI);

  // Divisiones superiores
  arc(width/2 - 80, 300, 160, 160, PI, TWO_PI);
  arc(width/2, 300, 160, 180, PI, TWO_PI);
  arc(width/2 + 80, 300, 160, 160, PI, TWO_PI);

  // Curvas inferiores
  arc(width/2 - 80, 345, 160, 70, 0, PI);
  arc(width/2, 345, 160, 70, 0, PI);
  arc(width/2 + 80, 345, 160, 70, 0, PI);

  // Mango
  line(width/2, 300, width/2, 520);

  // Gotas
  drawDrop(width/2 - 110, 420);
  drawDrop(width/2 - 30, 460);
  drawDrop(width/2 + 40, 450);
  drawDrop(width/2 + 110, 410);

  // Texto
  fill(255);
  textAlign(CENTER);
  textSize(20);
  text("THAT'S THE SPIRIT", width/2, 650);
}

void drawDrop(float x, float y) {
  stroke(255);
  fill(255);
  ellipse(x, y, 8, 12);
  triangle(x-4, y, x+4, y, x, y-8);
}