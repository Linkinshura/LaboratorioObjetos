void setup() {
  size(600, 800);
}

void draw() {
  background(0);
  
  stroke(255);
  strokeWeight(8);
  noFill();

  // Arco grande superior
  arc(width/2, 300, 320, 210, PI, TWO_PI);

  // Curvas interiores del paraguas
  arc(width/2 - 80, 300, 160, 160, PI, TWO_PI);
  arc(width/2, 300, 160, 180, PI, TWO_PI);
  arc(width/2 + 80, 300, 160, 160, PI, TWO_PI);

  // Mango
  line(width/2, 300, width/2, 500);

  // Gotas (curvas)
  drawDrop(width/2 - 100, 380);
  drawDrop(width/2 - 30, 420);
  drawDrop(width/2 + 40, 410);
  drawDrop(width/2 + 100, 370);

  // Texto
  fill(255);
  textAlign(CENTER);
  textSize(20);
  text("THAT'S THE SPIRIT", width/2, 650);
}

void drawDrop(float x, float y) {
  stroke(255);
  noFill();
  arc(x, y, 20, 25, 0, PI);
}