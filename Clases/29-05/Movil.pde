class Movil {

  PVector pos, vel;

  int r = 2;

  Movil(float x, float y) {
    pos = new PVector(x, y);
    //vel = new PVector(1, 1);
    vel = new PVector(random(-4, 4), random(-4, 4));
  }
  void mover() {
    pos.add(vel);
    this.contener();
  }

  void mostrar() {
    ellipse(pos.x, pos.y, r, r);
  }

  void contener() {
    if (pos.x < 0 || pos.x>width) {
      pos.sub(vel);
      vel.x = vel.x * -1;
    }
    if (pos.y<0 || pos.y > height) {
      pos.sub(vel);
      vel.y = vel.y * -1;
    }
  }



  //Movil(float x, float y, float vx, float vy) {
  // pos = new PVector(x, y);
  // vel = new PVector(vx, vy);
  // }
}
/*
Movil m;
void setup() {
  size(600, 400);
  m = new Movil(width/2, height/2);
}

void draw() {
  m.mover();
  m.mostrar();
}
*/
Movil[] moviles;
int cant = 10;
void setup(){
 size(800,600); 
  moviles = new Movil[cant];
  for(int i=0;i<cant;i++){
    moviles[i] = new Movil(random(width), random(height));
  }
}

void draw(){
  for(int i=0; i<cant;i++){
   moviles[i].mover();
   moviles[i].mostrar();
  }
}
