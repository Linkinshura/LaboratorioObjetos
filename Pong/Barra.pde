
class Barra {
  PVector pos;
  float velocidad = 7;
  int tamAlto = 80;
  int tamAncho = 15;
  color c = color(255);
  
  int teclaArriba;
  int teclaAbajo;
  boolean moviendoArriba = false;
  boolean moviendoAbajo = false;

  Barra(float x, float y, int up, int down) {
    pos = new PVector(x, y);
    teclaArriba = up;
    teclaAbajo = down;
  }

  void mover() {
    if (moviendoArriba && pos.y > 0) {
      pos.y -= velocidad;
    }
    if (moviendoAbajo && pos.y < height - tamAlto) {
      pos.y += velocidad;
    }
  }

  void mostrar() {
    fill(c);
    noStroke();
    rect(pos.x, pos.y, tamAncho, tamAlto);
  }

  void presionarTecla(int k) {
    if (k == teclaArriba) moviendoArriba = true;
    if (k == teclaAbajo) moviendoAbajo = true;
  }

  void soltarTecla(int k) {
    if (k == teclaArriba) moviendoArriba = false;
    if (k == teclaAbajo) moviendoAbajo = false;
  }

boolean ChochaConCirculo(PVector cpos, float cr){

return (dist(PMC.,PMC.y, cpos, cposy) < cr);
}

}

