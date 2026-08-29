ArrayList <Cuadrado> tubos;

Pelota bird;
float UltimoPar=0;
PVector g = new PVector(0, 2);

void setup() {
  size(800, 600);
  tubos=new ArrayList<Cuadrado>();
  bird=new Pelota(100.0, height/2);
}

void draw() {
  background(0);
  AgregarTubos();
  bird.AgregarFuerza(g);
  bird.mover();
  BorrarTubos();
  for ( Cuadrado t : tubos) {
    t.mover();
    t.mostrar();
  }
  bird.mostrar();
}


void AgregarTubos() {
  float tActual=millis();
  float dt=tActual - UltimoPar;
  if (dt > 5000) {
    tubos.add(new Cuadrado(5.0, height/2));
    tubos.add(new Cuadrado(2.0, height/2));
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
