int cantFil = 20;
int cantCol = 20;

int tamCol;
int tamFil;

// Variables Movimiento Snake
int dx = 1;
int dy = 0;

// Variables Manzana
int mx;
int my;

// Body Snake
int contBodieSolid = 1;

int[] SolidX = new int[cantFil * cantCol];
int[] SolidY = new int[cantFil * cantCol];

boolean gameOver = false;

void setup() {

  size(600, 600);

  tamCol = width / cantCol;
  tamFil = height / cantFil;

  // Start Snake
  SolidX[0] = cantCol / 2;
  SolidY[0] = cantFil / 2;

  NewPineapple();

  frameRate(5);
}

void draw() {

  background(30);

  if (!gameOver) {

    MoverSolid();
    CheckPineapple();
    CheckPum();

    Grulla();
    Pineapple();
    SolidSnake();

  } else {

    fill(255);
    textAlign(CENTER, CENTER);
    textSize(50);
    text("GAME OVER", width / 2, height / 2);

  }

}

void Grulla() {

  stroke(70);

  for (int j = 0; j < cantFil; j++) {

    float y = j * tamFil;

    for (int i = 0; i < cantCol; i++) {

      float x = i * tamCol;

      noFill();
      rect(x, y, tamCol, tamFil);

    }

  }

}

void Pineapple() {

  float x = mx * tamCol;
  float y = my * tamFil;

  fill(#F50743);
  rect(x, y, tamCol, tamFil);

}

void keyPressed() {

  if ((key == 'd' || key == 'D') && dx != -1) {

    dx = 1;
    dy = 0;

  }

  if ((key == 'a' || key == 'A') && dx != 1) {

    dx = -1;
    dy = 0;

  }

  if ((key == 'w' || key == 'W') && dy != 1) {

    dx = 0;
    dy = -1;

  }

  if ((key == 's' || key == 'S') && dy != -1) {

    dx = 0;
    dy = 1;

  }


}

void SolidSnake() {

  fill(#26CE1B);

  for (int i = 0; i < contBodieSolid; i++) {

    float x = SolidX[i] * tamCol;
    float y = SolidY[i] * tamFil;

    rect(x, y, tamCol, tamFil);

  }

}

void MoverSolid() {

  // Mover cuerpo
  for (int i = contBodieSolid - 1; i > 0; i--) {

    SolidX[i] = SolidX[i - 1];
    SolidY[i] = SolidY[i - 1];

  }

  // Mover cabeza
  SolidX[0] = SolidX[0] + dx;
  SolidY[0] = SolidY[0] + dy;

}

void CheckPineapple() {

  if (SolidX[0] == mx && SolidY[0] == my) {

    contBodieSolid++;

    NewPineapple();

  }

}

void NewPineapple() {

  boolean valida = false;

  while (!valida) {

    mx = round(random(cantCol - 1));
    my = round(random(cantFil - 1));

    valida = true;

    for (int i = 0; i < contBodieSolid; i++) {

      if (SolidX[i] == mx && SolidY[i] == my) {

        valida = false;

      }

    }

  }

}

void CheckPum() {

  // Chocar paredes
  if (SolidX[0] < 0 || SolidX[0] >= cantCol ||
      SolidY[0] < 0 || SolidY[0] >= cantFil) {

    gameOver = true;

  }

  // Chocar consigo mismo
  for (int i = 1; i < contBodieSolid; i++) {

    if (SolidX[0] == SolidX[i] &&
        SolidY[0] == SolidY[i]) {

      gameOver = true;

    }

  }

}
