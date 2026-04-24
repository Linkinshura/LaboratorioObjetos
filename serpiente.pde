// Snake con control por mouse

ArrayList<PVector> snake;
PVector food;

float speed = 3;
int initialSize = 20;
int growAmount = 10;

void setup() {
  size(600, 600);
  snake = new ArrayList<PVector>();
  
  // Posición inicial en el centro
  for (int i = 0; i < initialSize; i++) {
    snake.add(new PVector(width/2, height/2));
  }
  
  spawnFood();
}

void draw() {
  background(0);
  
  moveSnake();
  checkCollision();
  drawSnake();
  drawFood();
}

void moveSnake() {
  PVector head = snake.get(0).copy();
  
  // Dirección hacia el mouse
  PVector dir = new PVector(mouseX - head.x, mouseY - head.y);
  dir.normalize();
  dir.mult(speed);
  
  head.add(dir);
  snake.add(0, head);
  snake.remove(snake.size() - 1);
}

void drawSnake() {
  fill(0, 255, 0);
  noStroke();
  
  for (PVector p : snake) {
    ellipse(p.x, p.y, 10, 10);
  }
}

void drawFood() {
  fill(255, 0, 0);
  ellipse(food.x, food.y, 10, 10);
}

void spawnFood() {
  food = new PVector(random(width), random(height));
}

void checkCollision() {
  PVector head = snake.get(0);
  
  // Comer comida
  if (dist(head.x, head.y, food.x, food.y) < 10) {
    for (int i = 0; i < growAmount; i++) {
      snake.add(snake.get(snake.size() - 1).copy());
    }
    spawnFood();
  }
  
  // Colisión con el cuerpo
  for (int i = 1; i < snake.size(); i++) {
    PVector part = snake.get(i);
    if (dist(head.x, head.y, part.x, part.y) < 5) {
      gameOver();
    }
  }
  
  // Salirse de la pantalla
  if (head.x < 0 || head.x > width || head.y < 0 || head.y > height) {
    gameOver();
  }
}

void gameOver() {
  println("Game Over");
  noLoop();
}