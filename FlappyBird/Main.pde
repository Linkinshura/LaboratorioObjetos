ArrayList<Cuadrado> tubos;
Pelota bird;

float UltimoPar = 0;
PVector G = new PVector(0, 0.5);

int puntaje = 0;
boolean juegoTerminado = false;

void setup() {
  size(800, 600);

  tubos = new ArrayList<Cuadrado>();
  bird = new Pelota(100, height / 2);

  UltimoPar = millis();
}

void draw() {
  background(0, 180, 255);

  if (!juegoTerminado) {
    agregartubos();

    bird.addFuerza(G);
    bird.mover();
    bird.rebotar();

    for (Cuadrado t : tubos) {
      t.mover();
      t.mostrar();
    }

    comprobarColisiones();
    actualizarPuntaje();

    bird.mostrar();

    fill(255);
    textSize(40);
    textAlign(CENTER);
    text(puntaje, width / 2, 60);
  } else {
    for (Cuadrado t : tubos) {
      t.mover();
      t.mostrar();
    }

    bird.mostrar();

    fill(255);
    textAlign(CENTER);

    textSize(60);
    text("GAME OVER", width / 2, height / 2 - 40);

    textSize(30);
    text("Puntaje: " + puntaje, width / 2, height / 2 + 20);

    textSize(20);
    text("Presioná ESPACIO para reiniciar", width / 2, height / 2 + 70);
  }

  borrartubos();
}

void keyPressed() {
  if (key == ' ' && !juegoTerminado) {
    bird.saltar();
  }

  if (key == ' ' && juegoTerminado) {
    reiniciar();
  }
}

void agregartubos() {
  float tActual = millis();
  float dt = tActual - UltimoPar;

  if (dt > 2000) {
    float ancho = 60;
    float altoHueco = 160;
    float altoArriba = random(50, 350);

    tubos.add(new Cuadrado(
      width,
      0,
      ancho,
      altoArriba
    ));

    tubos.add(new Cuadrado(
      width,
      altoArriba + altoHueco,
      ancho,
      height - (altoArriba + altoHueco)
    ));

    UltimoPar = tActual;
  }
}

void borrartubos() {
  for (int i = tubos.size() - 1; i >= 0; i--) {
    Cuadrado aux = tubos.get(i);

    if (aux.pos.x + aux.ancho < 0) {
      tubos.remove(i);
    }
  }
}

void comprobarColisiones() {
  for (Cuadrado t : tubos) {
    float izquierda = t.pos.x;
    float derecha = t.pos.x + t.ancho;
    float arriba = t.pos.y;
    float abajo = t.pos.y + t.alto;

    float cercanoX = constrain(bird.pos.x, izquierda, derecha);
    float cercanoY = constrain(bird.pos.y, arriba, abajo);

    float distanciaX = bird.pos.x - cercanoX;
    float distanciaY = bird.pos.y - cercanoY;

    if (distanciaX * distanciaX + distanciaY * distanciaY < bird.r * bird.r) {
      perder();
    }
  }
}

void actualizarPuntaje() {
  for (int i = 0; i < tubos.size(); i += 2) {
    Cuadrado tubo = tubos.get(i);

    if (tubo.pos.x + tubo.ancho < bird.pos.x && tubo.pos.x + tubo.ancho > bird.pos.x - 4) {
      puntaje++;
    }
  }
}

void perder() {
  juegoTerminado = true;
  bird.vel.set(0, 0);
}

void reiniciar() {
  tubos.clear();

  bird = new Pelota(100, height / 2);

  puntaje = 0;
  juegoTerminado = false;

  UltimoPar = millis();
}
