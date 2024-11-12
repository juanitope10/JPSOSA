# Conceptos Básicos

## Espacios de Probabilidad
### Definición
- Un espacio de probabilidad está compuesto por un espacio muestral \(\Omega\), una \(\sigma\)-álgebra \(F\), y una medida de probabilidad \(P\).

### Ejemplos
- Espacios muestrales finitos
- Espacios muestrales Laplacianos

## Espacio Muestral
### Experimento Aleatorio
- Resultado impredecible con un conjunto conocido de posibles resultados.

### Ejemplos
- Lanzamiento de un dado
- Lanzamiento de una moneda tres veces

## \(\sigma\)-álgebra
### Descripción
- Colección de subconjuntos de \(\Omega\) que incluye \(\Omega\) mismo, es cerrada bajo complemento y unión de una secuencia de conjuntos.

### Ejemplos
- \(\sigma\)-álgebra trivial: \(\{ \emptyset, \Omega \}\)
- \(\sigma\)-álgebra de Borel en \(\mathbb{R}\)

## Medida de Probabilidad
### Propiedades
- \(P(\Omega) = 1\)
- \(P(A) \geq 0\) para todo \(A \in F\)
- Aditividad para conjuntos disjuntos: \(P(A \cup B) = P(A) + P(B)\) si \(A \cap B = \emptyset\)

---

# Independencia y Probabilidad Condicional

## Independencia
### Definición
- Dos eventos \(A\) y \(B\) son independientes si \(P(A \cap B) = P(A)P(B)\).

### Ejemplos
1. **Lanzamiento de un dado dos veces**:
   - \(A\): Sale 3 en el primer lanzamiento.
   - \(B\): Sale 5 en el segundo lanzamiento.
   - Verifica si \(P(A \cap B) = P(A) \times P(B)\).

2. **Selección de una carta de un mazo**:
   - \(C\): Sale una carta negra.
   - \(D\): Sale una figura (J, Q, K).
   - Verifica si \(P(C \cap D) = P(C) \times P(D)\).

### Proposición
- Si \(A\) y \(B\) son independientes, entonces \(A\) y \(B^c\), \(A^c\) y \(B\), y \(A^c\) y \(B^c\) también son independientes.

### Independencia de Más de Dos Eventos
- Una secuencia de eventos \(\{A_1, A_2, \dots, A_k\}\) es independiente si:
  \[
  P(A_{j_1} \cap A_{j_2} \cap \dots \cap A_{j_s}) = \prod_{i=1}^s P(A_{j_i})
  \]
  para cualquier subconjunto de eventos.

## Probabilidad Condicional
### Definición
- \(P(A|B) = \frac{P(A \cap B)}{P(B)}\) si \(P(B) > 0\).

### Ejemplos
1. **Infarto al Miocardio y Aspirina**:
   - Tabla de frecuencias sobre el efecto de tomar aspirina o placebo y la incidencia de infarto.
   - Calcula \(P(\text{Infarto}|\text{Placebo})\) y \(P(\text{Infarto}|\text{Aspirina})\).

2. **Juego de Cartas**:
   - Probabilidad de ganar después de un anuncio sobre un número par.

### Teorema de la Probabilidad Total
- Si \(\{A_j\}_{j=1}^n\) es una partición de \(\Omega\), entonces:
  \[
  P(B) = \sum_{j=1}^n P(A_j)P(B|A_j)
  \]

### Teorema de Bayes
- Actualización de probabilidades con nueva información:
  \[
  P(A_k|B) = \frac{P(A_k)P(B|A_k)}{\sum_{j=1}^n P(A_j)P(B|A_j)}
  \]

---

# Variables Aleatorias

## Variables Aleatorias Discretas
### Definición
- Función que asigna a cada evento un valor numérico.

### Ejemplos
1. **Distribución Binomial**:
   - Experimento: Lanzar una moneda 3 veces.
   - Probabilidades calculadas para cada número posible de caras.

2. **Distribución Hipergeométrica**:
   - Experimento: Seleccionar cartas de una caja con cartas rojas y blancas.
   - Probabilidad de obtener un cierto número de cartas rojas.

### Función de Masa de Probabilidad (fmp)
- \(f_X(x) = P(X = x)\) para una variable aleatoria discreta.

## Variables Aleatorias Continuas
### Definición
- Función de densidad de probabilidad \(f_X(x)\) tal que \(P(X \in B) = \int_B f_X(x) \, dx\).

### Función de Distribución Acumulada (FDA)
- \(F_X(x) = P(X \leq x)\)

### Ejemplos
1. **Distribución Exponencial**:
   - Tiempo de vida de un bombillo: \(f(x) = \frac{1}{2} e^{-x/2}\) para \(x > 0\).
   - Calcula \(P(0.5 \leq X \leq 2.5)\) mediante integración.

---

# Procesos Estocásticos y Cadenas de Markov

## Definición
- Un proceso estocástico es una colección de variables aleatorias indexadas por el tiempo.

## Cadena de Markov
### Propiedad de Markov
- La probabilidad de un estado futuro depende solo del estado presente, no de los estados pasados.

### Matriz de Transición
- Matriz que describe las probabilidades de pasar de un estado a otro.
- Ejemplo: Matriz de transición en problemas de movilidad social.

### Proceso de Markov Homogéneo
- La matriz de transición es estacionaria, es decir, no depende del tiempo.

### Ejemplos
1. **Movilidad Social**:
   - Modelo de transición entre estratos socioeconómicos con probabilidades estacionarias.

2. **Cálculo de Transiciones en Múltiples Pasos**:
   - Matriz de transición en \(k\) pasos: \(P^{(k)} = P^k\).

---

# Métodos de Conteo

## Permutaciones
### Importancia al Orden
- Arreglos donde el orden importa.

## Combinaciones
### No Importa el Orden
- Selecciones donde el orden no importa.

---

# Coeficientes Multinomiales

## Coeficientes Binomiales
### Descripción
- Relacionados con el desarrollo del binomio de Newton.

## Coeficiente Multinomial
### Descripción
- Cantidad de formas de distribuir \(n\) objetos en \(k\) grupos.

---

# Variables Aleatorias Continuas

## Función de Densidad de Probabilidad
- \(f_X(x) \geq 0\) y \(\int_{-\infty}^{\infty} f_X(x) \, dx = 1\).

### Ejemplos
1. **Distribución Exponencial**:
   - Función de densidad: \(f(x) = \frac{1}{2} e^{-x/2}\) para \(x > 0\).
   - Función de distribución: \(F(x) = 1 - e^{-x/2}\) para \(x \geq 0\).

## Probabilidad de Intervalos
- Probabilidad de que una variable aleatoria esté en un intervalo: \(P(a \leq X \leq b) = \int_a^b f_X(x) \, dx\).

### Observaciones
- Para variables continuas, \(P(X = c) = 0\) para cualquier \(c\).


