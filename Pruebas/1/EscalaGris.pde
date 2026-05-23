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

int filas = 8;
int columnas = 8;

int tamFilas;
int tamColumnas;

void setup() {

  size(600, 400);

  tamFilas = width / columnas;
  tamColumnas = height / filas;

  grilla = new int[filas][columnas];

  for (int j = 0; j < filas; j++) {
    for (int i = 0; i < columnas; i++) {
      grilla[j][i] = round(random(255));
    }
  }
}

void draw() {

  background(0);

  Grilla();
}

void Grilla() {

  int x, y;

  for (int j = 0; j < filas; j++) {

    y = j * tamColumnas;

    for (int i = 0; i < columnas; i++) {

      x = i * tamFilas;

      fill(grilla[j][i]);

      rect(x, y, tamFilas, tamColumnas);
    }
  }
}

void mousePressed() {

  int fila = mouseY / tamColumnas;
  int columna = mouseX / tamFilas;

  if (fila >= 0 && fila < filas && columna >= 0 && columna < columnas) {

    grilla[fila][columna] += 25;

    if (grilla[fila][columna] > 255) {
      grilla[fila][columna] = 255;
    }
  }
}