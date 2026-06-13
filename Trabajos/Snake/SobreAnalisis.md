# Trabajo Practico SobreAnalisis del Snake

La intención de este trabajo es analizar el programa más allá de “hacer que funcione”. En programación -profesional- gran parte del trabajo consiste en comprender, explicar, justificar y documentar decisiones de diseño, estructuras de datos y comportamientos del sistema.

Este tipo de análisis es habitual en documentación funcional y técnica realizada por programadores, diseñadores de sistemas y analistas funcionales. El objetivo es desarrollar la capacidad de leer código, interpretarlo y comunicar claramente cómo funciona.

Las respuestas deben estar redactadas con sus propias palabras, utilizando vocabulario técnico cuando sea necesario. En muchas preguntas no alcanza con responder “qué hace”; también deberán explicar “por qué creen que fue hecho de esa manera”, “qué ventajas tiene”, “qué problemas puede generar” y “cómo podría mejorarse”.
Responder todas las preguntas respetando principalmente los apartados y en segundo lugar el número de pregunta.

<details>
<summary><strong>PARTE 1 — Comprensión general del programa</strong></summary>

<ol>
<li>¿Cuál es el objetivo general del programa?</li>
<li>¿Qué elementos del videojuego Snake están implementados en este código?</li>
<li>¿Qué diferencias encuentran entre este programa y una versión mínima/simple del Snake?</li>
<li>¿Qué situaciones puede atravesar el programa durante su ejecución?</li>
<li>¿Cómo se representa el concepto de “estado” dentro del programa?</li>
<li>¿Qué valor representa cada estado y qué sucede en cada uno?</li>
<li>¿Por qué creen que se eligió usar un entero (int) para representar el estado y no un boolean?</li>
<li>¿Qué ventaja tiene dividir el programa en múltiples funciones y procedimientos?</li>
<li>¿Qué partes del programa consideran que pertenecen a:
<ul>
<li>lógica del juego</li>
<li>visualización</li>
<li>control del usuario</li>
<li>manejo de datos</li>
</ul>
</li>
<li>¿Qué dificultades tendría este programa si siguiera creciendo en complejidad?</li>
<li>¿Por qué este programa puede servir como ejemplo de los límites de la programación estructurada?</li>
<li>¿Qué problemas de organización comienzan a aparecer?</li>
</ol>
</details>

<details>
<summary><strong>PARTE 2 — Variables globales y estructuras de datos</strong></summary>

<ol start="16">
<li>¿Qué significa que muchas variables estén declaradas de forma global?</li>
<li>¿Qué ventajas tiene usar variables globales en un programa pequeño?</li>
<li>¿Qué problemas puede generar el abuso de variables globales?</li>
<li>Explicar el propósito de:
<ul>
<li>cantFil</li>
<li>cantCol</li>
<li>tamCol</li>
<li>tamFil</li>
</ul>
</li>
<li>¿Cómo se calcula el tamaño visual de cada celda?</li>
<li>¿Qué relación existe entre el tamaño de la ventana y la grilla?</li>
<li>¿Qué ocurriría si la cantidad de filas y columnas fuera distinta?</li>
<li>¿Qué representan dx y dy?</li>
<li>¿Por qué no se guarda la dirección como texto ("arriba", "izquierda", etc.)?</li>
<li>¿Qué ventajas tiene representar el movimiento con números?</li>
<li>Completar la siguiente tabla:

| dx | dy | dirección |
|----|----|-----------|
| 1 | 0 | ? |
| -1 | 0 | ? |
| 0 | 1 | ? |
| 0 | -1 | ? |

</li>
<li>¿Qué representa sTam?</li>
<li>¿Por qué creen que el tamaño del snake se guarda separado de los arrays?</li>
<li>¿Qué representan los arrays sX[] y sY[]?</li>
<li>Explicar cómo se relacionan entre sí ambos arrays.</li>
<li>¿Qué representa la posición 0 de esos arrays?</li>
<li>¿Qué representa la última posición utilizada?</li>
<li>¿Por qué los arrays tienen tamaño cantFil*cantCol?</li>
<li>¿Qué pasaría si fueran más pequeños?</li>
<li>¿Qué ventajas y desventajas tiene esta forma de almacenar el cuerpo del snake?</li>
<li>¿Qué otra estructura de datos podría utilizarse?</li>
<li>¿Cómo se almacena la posición de la manzana?</li>
<li>¿Qué significa esta línea?

`int mX = round(random(cantCol-1));`

</li>
<li>¿Por qué se usa random()?</li>
<li>¿Por qué se usa round()?</li>
<li>¿Qué problemas podrían aparecer usando round() en este contexto?</li>
<li>¿Qué otra función podría haberse utilizado?</li>
</ol>

</details>

<details>
<summary><strong>PARTE 3 — Setup y Draw</strong></summary>

<ol start="43">
<li>¿Qué tareas se realizan dentro de setup()?</li>
<li>¿Por qué setup() se ejecuta una sola vez? ¿Se ejecuta una sola vez?</li>
<li>¿Qué ocurriría si parte de este código estuviera dentro de draw()?</li>
<li>¿Qué función cumple frameRate(5)?</li>
<li>¿Por qué creen que el Snake funciona mejor con pocos FPS?</li>
<li>¿Qué ocurre dentro de draw()?</li>
<li>Explicar el orden en que se ejecutan las funciones del juego.</li>
<li>¿Por qué el orden de ejecución es importante?</li>
<li>¿Qué pasaría si mostrarSnake() ocurriera antes de moverSnake()?</li>
<li>¿Qué pasaría si chequarComida() estuviera después de moverSnake()?</li>
<li>¿Por qué draw() tiene dos bloques if separados?</li>
<li>¿Qué ventaja tiene separar el comportamiento según el estado?</li>
<li>¿Qué sucede cuando el snake muere?</li>
<li>¿Qué función cumple frameDeCambio?</li>
<li>¿Para qué se utiliza frameCount?</li>
<li>¿Qué ventaja tiene medir tiempo usando frames?</li>
<li>¿Qué desventajas tiene?</li>
</ol>

</details>

<details>
<summary><strong>PARTE 4 — Entrada de teclado</strong></summary>

<ol start="60">
<li>¿Qué función cumple keyPressed()?</li>
<li>¿Por qué el programa permite usar WASD y flechas?</li>
<li>¿Qué diferencia existe entre key y keyCode?</li>
<li>¿Por qué creen que se usan ambas?</li>
<li>¿Qué sucede si el jugador toca una tecla cuando el estado es Game Over?</li>
<li>¿Qué hace inicializarTodo()?</li>
<li>¿Por qué además se vuelve a llamar a setup()?</li>
<li>¿Qué opinan de esa decisión? ¿Es correcta? ¿Es prolija? ¿Podría hacerse de otra manera?</li>
<li>Explicar esta condición: <code>if (dx==0)</code></li>
<li>¿Qué problema intenta evitar?</li>
<li>¿Qué pasaría si esa validación no existiera?</li>
<li>¿Por qué se controla horizontal y vertical por separado?</li>
<li>¿Qué ventajas tiene esta lógica?</li>
<li>¿Encuentran alguna limitación en este sistema de control?</li>
</ol>

</details>

<details>
<summary><strong>PARTE 5 — Movimiento y lógica interna</strong></summary>

<ol start="74">
<li>Explicar paso a paso cómo funciona <code>moverSnake()</code>.</li>
<li>¿Por qué el <code>for</code> recorre desde atrás hacia adelante?</li>
<li>¿Qué problema aparecería si recorriera desde adelante?</li>
<li>¿Qué representa esta línea?

<pre><code>sX[i]=(sX[i-1]+cantCol)%cantCol;
</code></pre>

</li>
<li>¿Para qué se suma <code>cantCol</code> antes del módulo? Armar una tabla de verdad en caso de que necesites explicarlo.</li>
<li>¿Qué función cumple el operador <code>%</code>?</li>
<li>Explicar cómo el módulo permite que el snake “aparezca” del otro lado de la pantalla.</li>
<li>¿Qué ocurriría si se eliminara el módulo?</li>
<li>¿Qué ventaja tiene esta solución respecto a usar múltiples <code>if</code>?</li>
<li>¿Qué conocimientos matemáticos aparecen aplicados aquí?</li>
<li>¿Cómo podrían modificar el programa para que tocar el borde produzca Game Over?</li>
<li>¿Qué modificaciones deberían hacerse en <code>moverSnake()</code>?</li>
</ol>

</details>

<details>
<summary><strong>PARTE 6 — Colisiones y comida</strong></summary>

<ol start="86">
<li>¿Cómo detecta el programa que el snake murió?</li>
<li>Explicar paso a paso <code>murio()</code>.</li>
<li>¿Por qué el <code>for</code> comienza en <code>sTam-1</code>?</li>
<li>¿Qué pasaría si comparara también contra <code>i=0</code>?</li>
<li>¿Qué tipo de colisión se está detectando?</li>
<li>¿Qué colisiones NO están implementadas?</li>
<li>Explicar cómo funciona <code>chequarComida()</code>.</li>
<li>¿Qué sucede cuando el snake come una manzana?</li>
<li>¿Cómo crece realmente el snake?</li>
<li>¿Por qué el programa funciona aunque nunca se “agregue” explícitamente un nuevo bloque al array?</li>
<li>¿Qué problema podría aparecer con la generación aleatoria de manzanas?</li>
<li>¿Puede aparecer una manzana dentro del snake?</li>
<li>¿Cómo resolverían ese problema?</li>
<li>¿Qué estructuras o algoritmos harían falta?</li>
</ol>

</details>

<details>
<summary><strong>PARTE 7 — Visualización</strong></summary>

<ol start="100">
<li>¿Qué función cumple <code>mostrarGrilla()</code>?</li>
<li>¿Por qué la grilla se dibuja usando dos <code>for</code> anidados?</li>
<li>¿Qué representa cada variable (<code>i</code>, <code>j</code>, <code>x</code>, <code>y</code>)?</li>
<li>¿Qué ocurriría si se quitara <code>stroke()</code>?</li>
<li>¿Qué hace <code>strokeWeight()</code>?</li>
<li>Explicar cómo se calcula la posición visual de cada elemento.</li>
<li>¿Por qué se multiplica por <code>tamCol</code> y <code>tamFil</code>?</li>
<li>¿Qué diferencia existe entre coordenadas lógicas y coordenadas visuales?</li>
<li>¿Qué función cumple <code>mostrarSnake()</code>?</li>
<li>¿Cómo se genera el color del snake?</li>
<li>¿Qué efecto visual produce?</li>
<li>¿Qué pasaría si <code>sTam</code> fuera muy grande?</li>
<li>¿Qué hace <code>mostrarManzana()</code>?</li>
<li>¿Por qué se usa <code>noStroke()</code>?</li>
<li>¿Qué ventajas tiene separar la visualización en distintas funciones?</li>
</ol>

</details>

<details>
<summary><strong>PARTE 8 — Game Over y explosión</strong></summary>

<ol start="115">
<li>Explicar qué hace <code>explotaExplotaMeExplo()</code>.</li>
<li>¿Por qué el <code>frameRate</code> cambia a 60?</li>
<li>¿Qué efecto produce <code>frameQuePasaron</code>?</li>
<li>¿Cómo se modifican los colores a lo largo del tiempo?</li>
<li>¿Qué efecto produce aumentar el <code>strokeWeight()</code>?</li>
<li>¿Qué problemas visuales podrían aparecer después de muchos frames?</li>
<li>¿Qué ocurrirá eventualmente con algunos valores de color?</li>
<li>¿Cómo podrían limitar esos valores?</li>
<li>¿Qué ventajas tiene separar la animación del resto del juego?</li>
</ol>

</details>

<details>
<summary><strong>PARTE 9 — Inicialización y reinicio</strong></summary>

<ol start="124">
<li>¿Qué variables reinicia <code>inicializarTodo()</code>?</li>
<li>¿Por qué es importante reinicializar todas?</li>
<li>¿Qué errores podrían aparecer si olvidamos reinicializar alguna?</li>
<li>¿Qué diferencias existen entre:
<pre><code>sX = new int[cantFil*cantCol];
</code></pre>
y simplemente cambiar valores dentro del array?</li>
<li>¿Por qué creen que decidí crear arrays nuevos?</li>
<li>¿Qué ventajas y desventajas tiene esa decisión?</li>
</ol>

</details>

<details>
<summary><strong>PARTE 10 — Análisis crítico y mejoras</strong></summary>

<ol start="130">
<li>¿Qué partes del código consideran repetidas?</li>
<li>¿Qué funciones podrían reutilizarse mejor?</li>
<li>¿Qué nombres de variables consideran claros?</li>
<li>¿Qué nombres podrían mejorarse?</li>
<li>¿Encuentran errores ortográficos o inconsistencias?</li>
<li>¿Qué consecuencias puede tener nombrar mal variables o funciones?</li>
<li>¿Qué comentarios consideran útiles?</li>
<li>¿Qué comentarios consideran innecesarios?</li>
<li>¿Qué partes del código creen que son difíciles de entender?</li>
<li>¿Qué estrategias podrían ayudar a mejorar la legibilidad?</li>
<li>¿Qué ventajas tendría usar constantes?</li>
<li>¿Qué ventajas tendría usar clases y objetos?</li>
<li>¿Cómo dividirían el programa en objetos?</li>
<li>Diseñar verbalmente una posible clase Snake.</li>
<li>¿Qué atributos tendría?</li>
<li>¿Qué métodos tendría?</li>
<li>Diseñar verbalmente una posible clase Manzana.</li>
<li>¿Qué ventajas tendría encapsular datos?</li>
<li>¿Qué ventajas tendría ocultar variables internas?</li>
<li>¿Qué problemas de mantenimiento aparecen cuando un programa crece?</li>
<li>¿Qué aprendizajes deja este programa sobre organización del código?</li>
</ol>

</details>

<details>
<summary><strong>PARTE 11 — Extensiones posibles</strong></summary>

<ol start="151">
<li>Proponer un sistema de puntaje.</li>
<li>¿Dónde guardarían el puntaje?</li>
<li>¿Cómo mostrarían el puntaje en pantalla?</li>
<li>¿Cómo agregarían niveles de dificultad?</li>
<li>¿Cómo harían que el snake acelere?</li>
<li>¿Cómo implementarían obstáculos?</li>
<li>¿Cómo detectarían colisiones con obstáculos?</li>
<li>¿Cómo harían un menú inicial?</li>
<li>¿Cómo agregarían pausa?</li>
<li>¿Cómo agregarían sonidos?</li>
<li>¿Cómo guardarían récords?</li>
<li>¿Qué cambios habría que hacer para permitir dos jugadores?</li>
<li>¿Qué partes del código se volverían problemáticas?</li>
<li>¿Qué ventajas tendría una versión orientada a objetos para implementar estas mejoras?</li>
</ol>

</details>

# Cierre

Responder este cuestionario implica analizar código como lo hacen programadores, analistas y diseñadores de sistemas en entornos reales de desarrollo. Entender un programa no significa solamente ejecutarlo: también implica poder leerlo, explicarlo, justificar decisiones, detectar problemas y pensar posibles mejoras.

Gran parte del trabajo profesional en programación consiste justamente en documentar sistemas, comunicar cómo funcionan y dejar registro claro para otras personas del equipo o para futuras versiones del proyecto.
