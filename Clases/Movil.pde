class Movil {

  PVector pos;
  PVector vel = new PVector(4, 3);
  PVector acel = new PVector(0, 0);
  float d = 70;
  PVector r = pos.copy();

  Movil(float origenX, float origenY) {
    pos = new PVector(origenX, origenY);
  }

  void mostrar() {
    circle(pos.x, pos.y, d);
  }

  void contener() {
    if (pos.y >= height || pos.y <= 0) {
      vel.y = vel.y * (-1);
    }

    if (pos.x >= width || pos.x <= 0) {
      vel.x = vel.x * (-1);
    }
  }

  void mover() {
    pos.add(vel);
    vel.add(acel);
    acel.mult(0);
  }

  void agregarFuerza(PVector F) {
    acel.add(F);
  }

  void alejar(PVector otro, float cuanto) {

    r.sub(otro);
    r.normalize();
    r.mult(cuanto);
    agregarFuerza(r);
  }

  boolean chocaCirculo(PVector otraPos, Float otroR) {
    float d = dist(pos.x, pos.y, otraPos.x, otraPos.y);

    if (d < (r + otroR)) {
      return true;
    } else return false;
  }
  void desacelerar(float cantidad) {
    PVector R = vel.copy();
    R.normalize();
    R.mult(cantidad);
    AsignarFuerza(R);
  }
}


/*
Top 3 Grupo Signorello:
 1-Max
 2-Kamien
 3-Signorello
 Top 3 Grupo Luna:
 1-Aramis
 2-Santi(novioLuna)
 3-Bruno Zapico(Bob Marley)
 Top 3 Grupo Hola:
 1- Nazir Molina *eyacula* osi q riko 7u7 UwU *eyacula frijoles*
 2- Tomas Hasmat
 3- Agustin Albina
 MH- Nacho en 2021... pelea el top 1
 Top 3 muebles
 1- Mesa
 2- Silla
 3- Sillon
 Top 3 Grupo Guerra:
 1- Julian
 2- Molina
 3- Almazans
 Top 3 Hobbies Ian:
 1- .md
 2- Charlar con Luna
 3- Escuchar Musica
 TOP 3 PJ mas Lindos:
 1- Vergil
 2- Leon
 3- V
 Top 3 hobbies Amanda:
 Top 3 hobbies Rilo:
 1- jugar a plataformeros (aguante Celeste pico 8 carajo)
 2- Mirar series de adult swim u series web
 3- Escuchar musica mientras ando disociado de la realidad mirando el techo
 TOP 3 Comidas Favoritas IAN:
 1-Ensalada de Lechuga y Tomate con cualquier cosa
 2- Mila con Pure
 3- Tomate solo(sin sal)
 TOP 3 Comidas Favoritas  AMANDA:
 1- PASTA PASTA CON LO Q SEA
 2- tarta de jamon y queso
 3- hamburguesa (sea casera o no)
 TOP 3 Comidas Favoritas RILO:
 1- guiso de lentejas
 2-fideos con tuco (los de mi mami)
 3- chipa
 Top Amanda, Mujeres:
 1-
 2-
 3-
 */
