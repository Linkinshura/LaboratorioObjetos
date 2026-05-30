void mostrarGrilla() {
  fill(40, 80);
  strokeWeight(30);
  stroke(0);
  for (int j= 0; j<cantFil; j++) {
    float y=j*tamFil;
    for (int i = 0; i<cantCol; i++) {
      float x = i*tamCol;
      rect(x, y, tamCol, tamFil);
    }
  }
}

void mostrarSnake() {

  for (int i = 0; i < sTam; i++) {
    fill((255/sTam)*i, 255, (255/sTam)*i);
    strokeWeight(15);
    stroke(0, 255, 0);
    float x = sX[i]*tamCol;
    float y = sY[i]*tamFil;
    rect(x, y, tamCol, tamFil);
  }
}

void mostrarManzana() {
  noStroke();
  float x = mX*tamCol ;
  float y = mY *tamFil;
  fill(255, 0, 0);
  rect(x, y, tamCol, tamFil);
}
