ArrayList<DuplaDeTubos> tubos;

Circulo pajaro;
Circulo pelotaPong;

Cuadrado paletaJugador;
Cuadrado paletaEnemigo;

PVector gravedad = new PVector(0, 0.5);

int estadoDelJuego = 0;

final int INICIO = 0;
final int FLAPPY = 1;
final int PONG = 2;
final int GAME_OVER = 3;

int juegoAnterior = 0;

int puntajeFlappy = 0;
int puntajeJugador = 0;
int puntajeEnemigo = 0;

float ultimoTubo = 0;

boolean arriba = false;
boolean abajo = false;


void setup() {
  size(800, 600);

  inicializarFlappy();
  inicializarPong();
}


void draw() {

  if (estadoDelJuego == INICIO) {
    pantallaInicio();
  }

  if (estadoDelJuego == FLAPPY) {
    jugarFlappy();
  }

  if (estadoDelJuego == PONG) {
    jugarPong();
  }

  if (estadoDelJuego == GAME_OVER) {
    pantallaGameOver();
  }
}


void pantallaInicio() {

  background(30, 120, 200);

  fill(255);
  textAlign(CENTER);

  textSize(70);
  text("MINI JUEGOS", width / 2, 130);

  textSize(45);
  text("1 - FLAPPY BIRD", width / 2, 270);
  text("2 - PONG", width / 2, 350);

  textSize(25);
  text("También podés hacer click", width / 2, 450);

  textSize(20);
  text("Elegí un juego para comenzar", width / 2, 500);
}


void inicializarFlappy() {

  tubos = new ArrayList<DuplaDeTubos>();

  pajaro = new Circulo(
    120,
    height / 2,
    20
  );

  pajaro.c = color(255, 255, 0);

  puntajeFlappy = 0;

  ultimoTubo = millis();
}


void jugarFlappy() {

  background(80, 190, 240);

  pajaro.agregarFuerza(gravedad);
  pajaro.mover();
  pajaro.limitarVelocidad(10);

  agregarTubos();

  for (DuplaDeTubos tubo : tubos) {

    tubo.mover();
    tubo.dibujar();

    if (tubo.colisiona(pajaro)) {
      perder(FLAPPY);
    }

    if (tubo.pasoElPajaro(pajaro)) {
      puntajeFlappy++;
    }
  }

  for (int i = tubos.size() - 1; i >= 0; i--) {

    if (tubos.get(i).salioDePantalla()) {
      tubos.remove(i);
    }
  }

  if (pajaro.pos.y - pajaro.radio <= 0 ||
      pajaro.pos.y + pajaro.radio >= height) {

    perder(FLAPPY);
  }

  pajaro.dibujar();

  fill(255);
  textAlign(CENTER);

  textSize(40);
  text(puntajeFlappy, width / 2, 60);

  textSize(18);
  text("ESPACIO: saltar | ESC: menú", width / 2, height - 20);
}


void agregarTubos() {

  float ahora = millis();

  if (ahora - ultimoTubo > 2000) {

    tubos.add(
      new DuplaDeTubos(
        width,
        60,
        160
      )
    );

    ultimoTubo = ahora;
  }
}


void inicializarPong() {

  paletaJugador = new Cuadrado(
    40,
    height / 2 - 60,
    20,
    120
  );

  paletaEnemigo = new Cuadrado(
    width - 60,
    height / 2 - 60,
    20,
    120
  );

  pelotaPong = new Circulo(
    width / 2,
    height / 2,
    15,
    5,
    3
  );

  pelotaPong.c = color(255);

  puntajeJugador = 0;
  puntajeEnemigo = 0;
}


void jugarPong() {

  background(0);

  moverPaletas();

  pelotaPong.mover();

  if (pelotaPong.pos.y - pelotaPong.radio <= 0 ||
      pelotaPong.pos.y + pelotaPong.radio >= height) {

    pelotaPong.vel.y *= -1;
  }


  if (paletaJugador.colisiona(pelotaPong) &&
      pelotaPong.vel.x < 0) {

    pelotaPong.pos.x =
      paletaJugador.pos.x +
      paletaJugador.ancho +
      pelotaPong.radio;

    pelotaPong.vel.x *= -1;
  }


  if (paletaEnemigo.colisiona(pelotaPong) &&
      pelotaPong.vel.x > 0) {

    pelotaPong.pos.x =
      paletaEnemigo.pos.x -
      pelotaPong.radio;

    pelotaPong.vel.x *= -1;
  }


  moverEnemigo();


  if (pelotaPong.pos.x < -pelotaPong.radio) {

    puntajeEnemigo++;

    reiniciarPelota(-1);
  }


  if (pelotaPong.pos.x > width + pelotaPong.radio) {

    puntajeJugador++;

    reiniciarPelota(1);
  }


  fill(255);

  paletaJugador.dibujar();
  paletaEnemigo.dibujar();
  pelotaPong.dibujar();


  textAlign(CENTER);

  textSize(50);

  text(
    puntajeJugador,
    width / 2 - 50,
    60
  );

  text(
    puntajeEnemigo,
    width / 2 + 50,
    60
  );


  textSize(18);

  text(
    "W/S o ↑/↓ para mover | ESC: menú",
    width / 2,
    height - 20
  );


  if (puntajeJugador >= 5 ||
      puntajeEnemigo >= 5) {

    perder(PONG);
  }
}


void moverPaletas() {

  if (arriba) {
    paletaJugador.pos.y -= 6;
  }

  if (abajo) {
    paletaJugador.pos.y += 6;
  }

  paletaJugador.pos.y = constrain(
    paletaJugador.pos.y,
    0,
    height - paletaJugador.alto
  );
}


void moverEnemigo() {

  float centroEnemigo =
    paletaEnemigo.pos.y +
    paletaEnemigo.alto / 2;


  if (pelotaPong.pos.y < centroEnemigo) {
    paletaEnemigo.pos.y -= 4;
  }

  if (pelotaPong.pos.y > centroEnemigo) {
    paletaEnemigo.pos.y += 4;
  }


  paletaEnemigo.pos.y = constrain(
    paletaEnemigo.pos.y,
    0,
    height - paletaEnemigo.alto
  );
}


void reiniciarPelota(int direccion) {

  pelotaPong.pos.set(
    width / 2,
    height / 2
  );

  float velocidadY = random(-3, 3);

  pelotaPong.vel.set(
    5 * direccion,
    velocidadY
  );
}


void perder(int juego) {

  juegoAnterior = juego;

  estadoDelJuego = GAME_OVER;
}


void pantallaGameOver() {

  background(20);

  fill(255);
  textAlign(CENTER);

  textSize(70);
  text("GAME OVER", width / 2, 200);


  textSize(35);

  if (juegoAnterior == FLAPPY) {

    text(
      "Puntaje: " + puntajeFlappy,
      width / 2,
      290
    );
  }


  if (juegoAnterior == PONG) {

    text(
      puntajeJugador + " - " + puntajeEnemigo,
      width / 2,
      290
    );
  }


  textSize(25);

  text(
    "ENTER: volver al menú",
    width / 2,
    400
  );

  text(
    "R: jugar nuevamente",
    width / 2,
    450
  );
}


void keyPressed() {

  if (estadoDelJuego == INICIO) {

    if (key == '1') {

      inicializarFlappy();

      estadoDelJuego = FLAPPY;
    }


    if (key == '2') {

      inicializarPong();

      estadoDelJuego = PONG;
    }
  }


  else if (estadoDelJuego == FLAPPY) {

    if (key == ' ') {

      pajaro.vel.y = -9;
    }
  }


  else if (estadoDelJuego == PONG) {

    if (key == 'w' ||
        key == 'W' ||
        keyCode == UP) {

      arriba = true;
    }


    if (key == 's' ||
        key == 'S' ||
        keyCode == DOWN) {

      abajo = true;
    }
  }


  if (key == ESC) {

    key = 0;

    estadoDelJuego = INICIO;

    arriba = false;
    abajo = false;
  }


  if (estadoDelJuego == GAME_OVER) {

    if (keyCode == ENTER ||
        key == '\n' ||
        key == '\r') {

      estadoDelJuego = INICIO;
    }


    if (key == 'r' ||
        key == 'R') {

      if (juegoAnterior == FLAPPY) {

        inicializarFlappy();

        estadoDelJuego = FLAPPY;
      }


      if (juegoAnterior == PONG) {

        inicializarPong();

        estadoDelJuego = PONG;
      }
    }
  }
}


void keyReleased() {

  if (key == 'w' ||
      key == 'W' ||
      keyCode == UP) {

    arriba = false;
  }


  if (key == 's' ||
      key == 'S' ||
      keyCode == DOWN) {

    abajo = false;
  }
}


void mousePressed() {

  if (estadoDelJuego == INICIO) {

    if (mouseY > 220 &&
        mouseY < 300) {

      inicializarFlappy();

      estadoDelJuego = FLAPPY;
    }


    if (mouseY > 300 &&
        mouseY < 380) {

      inicializarPong();

      estadoDelJuego = PONG;
    }
  }
}
