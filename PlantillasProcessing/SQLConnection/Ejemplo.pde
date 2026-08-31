
Connection conexion;
Statement consulta;
ResultSet resultados;

void setup() {
  size(500, 300);

  try {
    conexion = DriverManager.getConnection(
      "jdbc:mysql://localhost:3306/escuela",
      "root",
      "1234"
    );

    consulta = conexion.createStatement();

    resultados = consulta.executeQuery(
      "SELECT nombre, edad FROM alumnos"
    );

    while (resultados.next()) {
      String nombre = resultados.getString("nombre");
      int edad = resultados.getInt("edad");

      println(nombre + " - " + edad + " años");
    }

  } catch (Exception e) {
    println("Error: " + e.getMessage());
  }
}
