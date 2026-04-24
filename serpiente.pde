ArrayList<PVector> snake;

float speed = 3;
int size = 12;

int minLength = 15;
int maxLength = 60;

void setup() {
  size(600, 600);
  frameRate(60);
  
  snake = new ArrayList<PVector>();
  
  // Longitud aleatoria
  int length = int(random(minLength, maxLength));
  
  for (int i = 0; i < length; i++) {
    snake.add(new PVector(width/2, height/2));
  }
}

void draw() {
  background(0);
  
  move();
  drawSnake();
}

void move() {
  PVector head = snake.get(0).copy();
  
  PVector dir = PVector.sub(new PVector(mouseX, mouseY), head);
  
  if (dir.mag() != 0) {
    dir.normalize();
    dir.mult(speed);
  }
  
  head.add(dir);
  
  snake.add(0, head);
  snake.remove(snake.size() - 1);
}

void drawSnake() {
  noStroke();
  
  for (int i = 0; i < snake.size(); i++) {
    float c = map(i, 0, snake.size(), 255, 50);
    fill(0, c, 0);
    
    PVector p = snake.get(i);
    ellipse(p.x, p.y, size, size);
  }
}