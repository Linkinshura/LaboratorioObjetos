/*
 Alumno: Ian Leon Gutierrez
 Profesor: Carlos Daniel Lescano
 Materia: Laboratorio de Programacion Orientada a Objetos
 Curso: 5to 3ra Computacion Turno Noche
 Tema: 1

 Enunciado:
 1) Array de 1 Dimension
 Define un Array Unidimensional(1D) de tipo entero con un tamaño de 40
 elementos llamado lecturas y llénalo con valores aleatorios de altura
 (que representarán pulsaciones por minuto)

 Desarrolla un procedimiento llamado dibujarGrafica() que dibuje una serie
 de barras verticales (o una línea continua que conecte los puntos para punto
 extra) a lo largo de la pantalla para representar visualmente el historial
 de datos.

 Diseña una función llamada calcularPromedio() que reciba el arreglo como
 parámetro, calcule la media de las pulsaciones y devuelva ese valor (float).
 Con ese valor mostrar una línea roja en la pantalla que represente ese
 promedio.
*/

int[] lecturas;

int cant_lecturas = 40;

void setup() {

  size(800, 400);

  lecturas = new int[cant_lecturas];

  for (int i = 0; i < cant_lecturas; i++) {

    lecturas[i] = round(random(height));
  }
}

void draw() {

  background(255);

  dibujarGrafica();

  float promedio = calcularPromedio(lecturas);

  stroke(255, 0, 0);

  line(0, height - promedio, width, height - promedio);
}

void dibujarGrafica() {

  int espacio = width / cant_lecturas;

  stroke(0);

  for (int i = 0; i < cant_lecturas; i++) {

    int x = i * espacio;

    line(x, height, x, height - lecturas[i]);

    if (i > 0) {

      line(
        x - espacio,
        height - lecturas[i - 1],
        x,
        height - lecturas[i]
      );
    }
  }
}

float calcularPromedio(int[] arreglo) {

  float acum = 0;

  for (int i = 0; i < arreglo.length; i++) {

    acum += arreglo[i];
  }

  return acum / arreglo.length;
}