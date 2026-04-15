# Analisis 1
A partir de los programas trabajados previamente (grilla con color en array 3D, transición de color con array 4D, y versión actual con movimiento), realizar una explicación escrita que dé cuenta de cómo fue evolucionando la estructura de datos y el comportamiento del sistema.
El objetivo no es describir línea por línea el código, sino .
¿Qué nuevos datos se agregan además del color?
¿Cómo se reutiliza la misma lógica para cosas distintas (color y posición)?
Objetivo: Que puedan identificar que:
el cambio principal no está en el dibujo, sino en
el array pasa de guardar valores simples a representar
la misma estructura permite resolver distintos problemas (color y movimiento)
Forma de entrega
Texto breve (entre 10 y 20 líneas) en la carpeta: Se valora claridad por sobre extensión
Evitar copiar código completo: centrarse en explicar ideas
Sugerencia: Revisar los programas anteriores antes de escribir. La clave está en comparar, no en describir un solo código aislado.

## Analisis

Al principio trabajamos con arrays simples donde cada valor era algo directo, como la altura de una barra o si una celda estaba activa o no. Todo era bastante estático: lo que estaba guardado en el array era lo que se dibujaba.
Después empezamos a usar estructuras más grandes para guardar más de una cosa por celda, como el color en sus tres componentes. Ahí ya no era un solo dato, sino varios juntos.
Más adelante apareció la idea de tener un valor “actual” y otro “objetivo”, lo que permitió que las cosas cambien de a poco en vez de saltar de golpe.
En el último ejercicio también se sumó la posición de cada celda, y se usó la misma idea para que se muevan en pantalla. En resumen, fuimos usando la misma lógica pero cada vez para cosas más complejas.
