class Cuadrado {
  PVector pos;
  int tamAlto = 120;
  int tamAncho = 30;

  color cNormal = color(255);
  color cColision = color(255, 0, 0);

  Cuadrado(float x, float y) {
    pos = new PVector(x, y);
  }

  void mostrar(boolean colision) {
    if (colision) {
      fill(cColision);
    } else {
      fill(cNormal);
    }

    noStroke();
    rect(pos.x, pos.y, tamAncho, tamAlto);
  }
}
void AgregarTubos() {
  float tActual=millis();
  float dt=tActual - UltimoPar;
  if (dt > 5000) {
    tubos.add(new Cuadrado());
    tubos.add(new Cuadrado());
    UltimoPar=tActual;
  }
}

void BorrarTubos() {
  for (int i= tubos.size()-1; i>= 0; i--) {
    Cuadrado aux= tubos.get(i);
    if (aux.pos.x < 0) {
      tubos.remove(i);
    }
  }
}
