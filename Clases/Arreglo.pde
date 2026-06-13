Movil m;
Movil o;
PVector MXY = new PVector(0, 0);

void setup() {
  size(800, 600);

  m = new Movil(width/2, height/2);
  o = new Movil(100, 300);
}

void draw() {

  background(#E58609);

  //m.AgregarFuerza(6);
  //o.AgregarFuerza(4);

  m.mover();
  o.mover();

  m.contener();
  o.contener();

  m.mostrar();
  o.mostrar();
  
  m.alejar(MXY,2);
  o.alejar(MXY,1);

  MXY.x = mouseX;
  MXY.y = mouseY;
}
