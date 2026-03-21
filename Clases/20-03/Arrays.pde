float pi = 3.14;
int edad = 18;
int cant = 7;

int[] edades;

// int[] edades = new int[7]; 

void setup() {
  size(800, 600);

  edades = new int[cant]; // Edades pasa a ser una nueva estructura de enteros(array de int)
  edades[1] = 18;
  
  println(edades[1]);

}

void draw() {
}
