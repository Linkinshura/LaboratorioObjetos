class Pelota {
  PVector pos;
  PVector vel;
  PImage img;

  float r = 20;
  color c = color(255);

  Pelota(float x, float y, float tipo) {
    pos = new PVector(x, y);
    vel = new PVector(4, 3);
    if(tipo == 1) img = loadImage("1.png");
  }

  void mover() {
    pos.add(vel);

    if (pos.x - r < 0 || pos.x + r > width) {
      vel.x *= -1;
    }

    if (pos.y - r < 0 || pos.y + r > height) {
      vel.y *= -1;
    }
  }

  void mostrar() {
    fill(c);
    noStroke();
    ellipse(pos.x, pos.y, r * 2, r * 2);
    image(img,pos.x,pos.y);
  }

  boolean ChocaConRect(PVector rpos, float rw, float rh) {

    float cercaX = constrain(pos.x, rpos.x, rpos.x + rw);
    float cercaY = constrain(pos.y, rpos.y, rpos.y + rh);

    PVector puntoCercano = new PVector(cercaX, cercaY);

    return ChocaCon(puntoCercano);
  }

  boolean ChocaCon(PVector otro) {

    float distancia = dist(
      pos.x,
      pos.y,
      otro.x,
      otro.y
    );

    return distancia < r;
  }
}
