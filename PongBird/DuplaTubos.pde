class DuplaDeTubos {
  Cuadrado tuboArriba;
  Cuadrado tuboAbajo;

  float espacio;
  float velocidad;
  boolean puntoDado = false;

  DuplaDeTubos(float x, float ancho, float espacio) {
    this.espacio = espacio;
    velocidad = -3;

    float altoArriba = random(60, height - espacio - 60);

    tuboArriba = new Cuadrado(
      x,
      0,
      ancho,
      altoArriba
    );

    tuboAbajo = new Cuadrado(
      x,
      altoArriba + espacio,
      ancho,
      height - (altoArriba + espacio)
    );
  }

  void mover() {
    tuboArriba.pos.x += velocidad;
    tuboAbajo.pos.x += velocidad;
  }

  void dibujar() {
    fill(0, 255, 0);

    tuboArriba.dibujar();
    tuboAbajo.dibujar();
  }

  boolean colisiona(Circulo pajaro) {
    return tuboArriba.colisiona(pajaro) ||
           tuboAbajo.colisiona(pajaro);
  }

  boolean salioDePantalla() {
    return tuboArriba.pos.x + tuboArriba.ancho < 0;
  }

  boolean pasoElPajaro(Circulo pajaro) {
    if (!puntoDado &&
        tuboArriba.pos.x + tuboArriba.ancho < pajaro.pos.x) {

      puntoDado = true;
      return true;
    }

    return false;
  }

  float obtenerCentroHueco() {
    return tuboArriba.alto + espacio / 2;
  }
}
