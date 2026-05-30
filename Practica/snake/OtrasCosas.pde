void moverSnake() {
  //dx, dy; //dirccion dl movimiento
  //Cuerpo
  //int sTam =1; //tamaño del Snake
  //int[] sX = new int[cantFil*cantCol];
  //int[] sY = new int[cantFil*cantCol];

  for (int i = sTam-1; i >0; i--) {
    sX[i]=(sX[i-1]+cantCol)%cantCol ;
    sY[i]=(sY[i-1]+cantFil)%cantFil ;
  }
  sX[0]=(sX[0] +dx +cantCol)%cantCol;
  sY[0]=(sY[0] +dy+ cantFil)%cantFil;
}
boolean murio() {
  for (int i = sTam-1; i >0; i--) {
    if ( sX[i] ==  sX[0] && sY[i] ==  sY[0]) return true;
  }
  return false;
}
void chequarComida() {

  if ((sX[0] == mX )&& (sY[0] == mY)) {
    sTam = sTam+1;

    mX =round(random(cantCol-1));
    mY= round(random(cantFil-1));
  }
}

void explotaExplotaMeExplo() {
  frameRate(60);
  int frameQuePasaron= frameCount- frameDeCambio;
  for (int i = 0; i < sTam; i++) {
    fill((255/sTam)*i, 255-frameQuePasaron, (255/sTam)*i -frameQuePasaron);
    strokeWeight(15+frameQuePasaron);
    stroke(255, 0, 0);
    float x = sX[i]*tamCol;
    float y = sY[i]*tamFil;
    rect(x, y, tamCol, tamFil);
  }
}

void inicializarTodo() {

  estado = 0 ; //0= jugando; 1 = GameOver
  frameDeCambio=0;
  //Movimiento
  dx=1;
  dy=0; //dirccion dl movimiento

  //Cuerpo
  sTam =1; //tamaño del Snake
  sX = new int[cantFil*cantCol];
  sY = new int[cantFil*cantCol];

  //Manzana
  mX =round(random(cantCol-1));
  mY= round(random(cantFil-1));
}
