ArrayList <Cuadrado> tubos;

Pelota bird;
float UltimoPar=0;
PVector g = new PVector(0, 2);

void setup() {
  size(800, 600);
  tubos=new ArrayList<cuadrado>();
  bird=new Pelota(100, height/2);
}

void draw() {
  background(0);
  AgregarTubos();
  bird.addFuerza(g);
  bird.mover();
  BorrarTubos();
  for ( Cuadrado t : tubos) {
    t.mover();
    t.mostrar();
  }
  bird.mostrar();
}
