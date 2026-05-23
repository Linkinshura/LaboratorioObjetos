/*
Alumno: Ian Leon Gutierrez
 Profesor: Carlos Daniel Lescano
 Materia: Laboratorio de Programacion Orientada a Objetos
 Curso: 5to 3ra Computacion Turno Noche
 Tema: 1
 
 Enunciado:
 1) Array de 1 Dimension
 Define un Array Unidimensional(1D) de tipo entero con un tamaño de 40
 elementos llamado lecturas y llénalo con valores aleatorios entre de altura
 (que representarán pulsaciones por minuto)
 
 Desarrolla un procedimiento llamado dibujarGrafica() que y dibuje una serie
 de barras verticales (o una línea continua que conecte los puntos para punto
 extra) a lo largo de la pantalla para representar visualmente el historial de
 datos.
 
 Diseña una función llamada calcularPromedio() que reciba el arreglo como
 parámetro, calcule la media de las pulsaciones y devuelva ese valor (float).
 Con ese valor mostrar una línea roja en la pantalla que represente ese
 promedio.
 
 */

int[] lecturas;
int i;
int cant_lecturas = 40;
float acum=0;
float promedio=0;


void setup() {
  size(400, 600);

  lecturas = new int[cant_lecturas];
  
  lecturas[i] = (round(random(height-1)));
  background(255);
}

void draw() {
  line(0, height/2, 400, height/2);

  dibujarGrafica();
  calcularPromedio();
}


void dibujarGrafica() {
  for (i=0; i<cant_lecturas; i++) {
    line(i, height/2, i, lecturas[i]);
    if (i > 0) {
      line(i, lecturas[i-1], i, lecturas[i]);
    }
  }
}

void calcularPromedio() {

  for ( i=0; i<40; i++) {
    acum += lecturas[i];
  }

  promedio = acum / i;

  //  line(height/2, 0, 400, promedio);
  // fill(255, 0, 0);
}
