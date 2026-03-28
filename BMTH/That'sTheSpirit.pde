void setup() {
  size(600, 800);
}

void draw() {
  background(0);
  
  stroke(255);
  strokeWeight(8);
  noFill();

  // Parte Superior Paraguas
  arc(width/2, 300, 320, 210, PI, TWO_PI);

  // Divisiones superiores
  arc(width/2 - 80, 300, 160, 160, PI, TWO_PI);
  arc(width/2, 300, 160, 180, PI, TWO_PI);
  arc(width/2 + 80, 300, 160, 160, PI, TWO_PI);

  // Curvas invertidas
  arc(width/2 - 80, 350, 160, 120, 0, PI);
  arc(width/2, 350, 160, 120, 0, PI);
  arc(width/2 + 80, 350, 160, 120, 0, PI);

  // Mango
  line(width/2, 300, width/2, 520);

  // gotas
  drawDrop(width/2 - 110, 420);
  drawDrop(width/2 - 30, 460);
  drawDrop(width/2 + 40, 450);
  drawDrop(width/2 + 110, 410);

  // texto
  fill(255);
  textAlign(CENTER);
  
  textSize(18);
  text("BRING ME THE HORIZON", width/2, 600);
  
  textSize(20);
  text("THAT'S THE SPIRIT", width/2, 640);
}

// Procedimiento gotas
void drawDrop(float x, float y) {
  stroke(255);
  noFill();
  
  // Parte curva
  arc(x, y, 20, 25, PI, TWO_PI);
  
  // Punta
  line(x - 10, y, x, y + 15);
  line(x + 10, y, x, y + 15);
}