/*
Alumno: Ian Leon Gutierrez
 Profesor: Carlos Daniel Lescano
 Materia: Laboratorio de Programacion Orientada a Objetos
 Curso: 5to 3ra Computacion Turno Noche
 Tema: 1
 
 2) Array de 2 dimensiones
 Declara una matriz de enteros de tamaño variable que representará las
 elevaciones de un terreno. En el setup(), asigna a cada celda un valor entero
 aleatorio entre 0 y 255 mediante el uso de ciclos anidados.
 
 En el método draw(), recorre la matriz usando ciclos anidados para dibujar la
 cuadrícula. El color de relleno (fill) de cada celda debe corresponder
 directamente al valor numérico guardado en la matriz (creando un mapa en
 escala de grises).
 
 Añade interactividad: cuando el usuario haga clic sobre una celda específica
 de la cuadrícula, el valor de esa posición en la matriz debe incrementarse en
 25 unidades (sin superar el límite de 255), provocando que visualmente esa
 zona se aclare.
 
 */
int[][] grilla;
int filas=8, tamFilas;
int columnas=8, tamColumnas;
int i, j;


void setup() {
  size(600, 400);

  tamFilas= width/filas;
  tamColumnas = height/columnas;

  grilla = new int[filas][columnas];

  for (j=0; j<filas; j++) {
    for (i=0; i<columnas; i++) {
      grilla[j][i] = round(random(255-1));
    }
  }
}


void draw() {


  Grilla();
  CambioColor();
}


void Grilla() {
  int x, y;

  for (j=0; j<filas; j++) {
    x = j*tamFilas;
    for (i=0; i<columnas; i++) {
      y = i*tamColumnas;
      rect(x, y, tamFilas, tamColumnas);
      fill(grilla[j][i], grilla[j][i], grilla[j][i]);
    }
  }
}


void CambioColor() {

  int fila = mouseX/ tamFilas;
  int colum = mouseY / tamColumnas;

  if (mousePressed == true) {
    for (j=0; j<tamFilas; j++) {
      for (i=0; i<tamColumnas; i++) {
        if (fila > 0 & colum > 0) {
          int extra = 25;
          grilla[j][i] += extra;
        }
      }
    }
    fill(grilla[j][i]);
  }
}
