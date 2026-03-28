void setup() {
  size(600, 800);
  smooth(8);
}

void draw() {
  background(0);

  stroke(255);
  strokeWeight(8);
  noFill();
  strokeCap(ROUND);
  strokeJoin(ROUND);

  float cx = width / 2;
  float cy = 300;

  // Parte superior del paraguas
  arc(cx, cy, 320, 210, PI, TWO_PI);

  // Curvas superiores internas
  arc(cx - 80, cy, 160, 160, PI, TWO_PI);
  arc(cx, cy, 160, 180, PI, TWO_PI);
  arc(cx + 80, cy, 160, 160, PI, TWO_PI);

  // Curvas inferiores más planas
  float y = 345;
  float leftOuter = cx - 105;
  float leftInner = cx - 38;
  float rightInner = cx + 38;
  float rightOuter = cx + 105;

  bezier(leftOuter, y, leftOuter + 12, y - 28, leftInner - 18, y - 28, leftInner, y);
  bezier(leftInner, y, leftInner + 18, y - 28, rightInner - 18, y - 28, rightInner, y);
  bezier(rightInner, y, rightInner + 18, y - 28, rightOuter - 12, y - 28, rightOuter, y);

  // Mango
  line(cx, 300, cx, 520);

  // Gotas
  drawDrop(cx - 110, 420);
  drawDrop(cx - 30, 460);
  drawDrop(cx + 40, 450);
  drawDrop(cx + 110, 410);

  // Texto
  fill(255);
  noStroke();
  textAlign(CENTER);
  textSize(20);
  text("THAT'S THE SPIRIT", cx, 650);
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