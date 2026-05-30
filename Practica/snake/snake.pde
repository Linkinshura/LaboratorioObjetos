int cantFil=15, cantCol=15;
float tamCol, tamFil;
int estado = 0 ; //0= jugando; 1 = GameOver
int frameDeCambio=0;
//Movimiento
int dx=1, dy=0; //dirccion dl movimiento

//Cuerpo
int sTam =1; //tamaño del Snake
int[] sX = new int[cantFil*cantCol];
int[] sY = new int[cantFil*cantCol];

//Manzana
int mX =round(random(cantCol-1)), mY= round(random(cantFil-1));

void setup() {
  size(650, 650);
  tamCol= width/cantCol;
  tamFil= height/cantFil;
  //inicializar Snake
  sX[0]=cantCol/2;
  sY[0]=cantFil/2;
  frameRate(5);
}

void draw() {
  if (estado==0) {
    chequarComida();
    moverSnake();
    mostrarGrilla() ;
    mostrarManzana();
    mostrarSnake();
    if (murio()) {
      estado =1;
      frameDeCambio=frameCount;
    }
  }
  if (estado==1) {
    explotaExplotaMeExplo();
  }
}

void keyPressed() {

  if (estado ==1) {
    inicializarTodo();
    setup();
  }

  if (dx==0) {
    if (key == 'd' || key == 'D' || keyCode == RIGHT) {
      dx=1;
      dy=0;
    }

    if (key == 'a' || key == 'A'|| keyCode == LEFT) {
      dx=-1;
      dy=0;
    }
  }

  if (dy==0) {
    if (key == 'w' || key == 'W'|| keyCode == UP) {
      dx=0;
      dy=-1;
    }
    if (key == 's' || key == 'S'|| keyCode == DOWN) {
      dx=0;
      dy=1;
    }
  }
}
