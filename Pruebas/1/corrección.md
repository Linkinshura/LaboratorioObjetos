# Correcciones del primer código (Array 2D)

## 1. Tamaño de filas y columnas invertido

### Código original

```java
tamFilas = width / filas;
tamColumnas = height / columnas;
```

### Corrección

```java
tamFilas = width / columnas;
tamColumnas = height / filas;
```

### Explicación
Las filas corresponden al eje Y y las columnas al eje X.  
Por eso el ancho debe dividirse por columnas y la altura por filas.

---

# 2. `fill()` estaba después de `rect()`

### Código original

```java
rect(x, y, tamFilas, tamColumnas);
fill(grilla[j][i]);
```

### Corrección

```java
fill(grilla[j][i]);
rect(x, y, tamFilas, tamColumnas);
```

### Explicación
En Processing, `fill()` debe ejecutarse antes de dibujar la figura.

---

# 3. Coordenadas X e Y invertidas

### Código original

```java
x = j * tamFilas;
y = i * tamColumnas;
```

### Corrección

```java
y = j * tamColumnas;
x = i * tamFilas;
```

### Explicación
- `i` representa columnas → eje X
- `j` representa filas → eje Y

---

# 4. Valor aleatorio incorrecto

### Código original

```java
random(255 - 1)
```

### Corrección

```java
random(255)
```

### Explicación
El ejercicio pedía valores entre 0 y 255.

---

# 5. Se modificaba toda la matriz

### Código original

```java
for (j=0; j<tamFilas; j++) {
  for (i=0; i<tamColumnas; i++) {
    grilla[j][i] += extra;
  }
}
```

### Corrección

```java
grilla[fila][columna] += 25;
```

### Explicación
Solo debe modificarse la celda clickeada.

---

# 6. Uso incorrecto de `tamFilas`

### Código original

```java
for (j=0; j<tamFilas; j++)
```

### Corrección

```java
for (j=0; j<filas; j++)
```

### Explicación
`tamFilas` representa tamaño en píxeles, no cantidad de filas.

---

# 7. Condición incorrecta

### Código original

```java
if (fila > 0 & colum > 0)
```

### Corrección

```java
if (fila >= 0 && columna >= 0)
```

### Explicación
- `&` debe reemplazarse por `&&`
- También debía permitir la posición 0.

---

# 8. No se controlaba el máximo de 255

### Corrección

```java
if (grilla[fila][columna] > 255) {
  grilla[fila][columna] = 255;
}
```

### Explicación
Evita que el valor supere el límite permitido.

---

# 9. Variables fuera del `for`

### Código original

```java
fill(grilla[j][i]);
```

### Explicación
`j` e `i` estaban fuera del rango del ciclo y podían generar errores.

---

# 10. Mejor uso del click

### Código original

```java
if (mousePressed == true)
```

### Corrección

```java
void mousePressed()
```

### Explicación
`mousePressed()` se ejecuta una sola vez por click y evita repeticiones continuas.

---

---

# Correcciones del segundo código (Array 1D)

# 1. Solo se llenaba una posición del array

### Código original

```java
lecturas[i] = round(random(height-1));
```

### Corrección

```java
for (int i = 0; i < cant_lecturas; i++) {
  lecturas[i] = round(random(height));
}
```

### Explicación
Debía llenarse todo el arreglo usando un ciclo.

---

# 2. Barras pegadas

### Código original

```java
line(i, height/2, i, lecturas[i]);
```

### Corrección

```java
int espacio = width / cant_lecturas;
int x = i * espacio;
```

### Explicación
Cada barra necesitaba una separación horizontal.

---

# 3. Coordenadas Y invertidas

### Corrección

```java
height - lecturas[i]
```

### Explicación
En Processing:
- `0` está arriba
- `height` abajo

Por eso se resta para que las barras crezcan hacia arriba.

---

# 4. Línea continua incorrecta

### Código original

```java
line(i, lecturas[i-1], i, lecturas[i]);
```

### Corrección

```java
line(
  x - espacio,
  height - lecturas[i - 1],
  x,
  height - lecturas[i]
);
```

### Explicación
La línea debía unir dos puntos distintos.

---

# 5. `calcularPromedio()` no devolvía valor

### Código original

```java
void calcularPromedio()
```

### Corrección

```java
float calcularPromedio(int[] arreglo)
```

### Explicación
El ejercicio pedía devolver un `float`.

---

# 6. El acumulador nunca se reiniciaba

### Corrección

```java
float acum = 0;
```

### Explicación
`draw()` se ejecuta constantemente y el acumulador seguía aumentando.

---

# 7. Faltaba `return`

### Corrección

```java
return acum / arreglo.length;
```

### Explicación
La función debía devolver el promedio calculado.

---

# 8. Línea roja comentada

### Código original

```java
// line(...)
```

### Explicación
La línea promedio nunca se dibujaba porque estaba comentada.

---

# 9. Coordenadas incorrectas en la línea promedio

### Código original

```java
line(height/2, 0, 400, promedio);
```

### Corrección

```java
line(0, height - promedio, width, height - promedio);
```

### Explicación
La línea debía ser horizontal y ubicarse según el promedio.

---

# 10. Faltaba color rojo

### Corrección

```java
stroke(255, 0, 0);
```

### Explicación
Define el color rojo para la línea del promedio.