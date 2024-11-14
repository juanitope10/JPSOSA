# 1. Conceptos Básicos

## 1.1 Espacios de Probabilidad
### 1.1.1 Definición
- Un espacio de probabilidad está compuesto por un espacio muestral \(\Omega\), una \(\sigma\)-álgebra \(F\), y una medida de probabilidad \(P\). 

### 1.1.2 Ejemplos
- 1.1.2.1 Espacios muestrales finitos
- 1.1.2.2 Espacios muestrales Laplacianos

## 1.2 Espacio Muestral
### 1.2.1 Experimento Aleatorio
- Resultado impredecible con un conjunto conocido de posibles resultados.

### 1.2.2 Ejemplos
- 1.2.2.1 Lanzamiento de un dado
- 1.2.2.2 Lanzamiento de una moneda tres veces

## 1.3 \(\sigma\)-álgebra
### 1.3.1 Descripción
- Colección de subconjuntos de \(\Omega\) que incluye \(\Omega\) mismo, es cerrada bajo complemento y unión de una secuencia de conjuntos.

### 1.3.2 Ejemplos
- 1.3.2.1 \(\sigma\)-álgebra trivial: \(\{ \emptyset, \Omega \}\)
- 1.3.2.2 \(\sigma\)-álgebra de Borel en \(\mathbb{R}\)

## 1.4 Medida de Probabilidad
### 1.4.1 Propiedades
- \(P(\Omega) = 1\)
- \(P(A) \geq 0\) para todo \(A \in F\)
- Aditividad para conjuntos disjuntos: \(P(A \cup B) = P(A) + P(B)\) si \(A \cap B = \emptyset\)

---

# 2. Independencia y Probabilidad Condicional

## 2.1 Independencia
### 2.1.1 Definición
- Dos eventos \(A\) y \(B\) son independientes si \(P(A \cap B) = P(A)P(B)\).

### 2.1.2 Ejemplos
1. **Lanzamiento de un dado dos veces**:
   - \(A\): Sale 3 en el primer lanzamiento.
   - \(B\): Sale 5 en el segundo lanzamiento.
   - Verifica si \(P(A \cap B) = P(A) \times P(B)\).

2. **Selección de una carta de un mazo**:
   - \(C\): Sale una carta negra.
   - \(D\): Sale una figura (J, Q, K).
   - Verifica si \(P(C \cap D) = P(C) \times P(D)\).

### 2.1.3 Proposición
- Si \(A\) y \(B\) son independientes, entonces \(A\) y \(B^c\), \(A^c\) y \(B\), y \(A^c\) y \(B^c\) también son independientes.

### 2.1.4 Independencia de Más de Dos Eventos
- Una secuencia de eventos \(\{A_1, A_2, \dots, A_k\}\) es independiente si:
  \[
  P(A_{j_1} \cap A_{j_2} \cap \dots \cap A_{j_s}) = \prod_{i=1}^s P(A_{j_i})
  \]
  para cualquier subconjunto de eventos.

## 2.2 Probabilidad Condicional
### 2.2.1 Definición
- \(P(A|B) = \frac{P(A \cap B)}{P(B)}\) si \(P(B) > 0\).

### 2.2.2 Ejemplos
1. **Infarto al Miocardio y Aspirina**:
   - Tabla de frecuencias sobre el efecto de tomar aspirina o placebo y la incidencia de infarto.
   - Calcula \(P(\text{Infarto}|\text{Placebo})\) y \(P(\text{Infarto}|\text{Aspirina})\).

2. **Juego de Cartas**:
   - Probabilidad de ganar después de un anuncio sobre un número par.

### 2.2.3 Teorema de la Probabilidad Total
- Si \(\{A_j\}_{j=1}^n\) es una partición de \(\Omega\), entonces:
  \[
  P(B) = \sum_{j=1}^n P(A_j)P(B|A_j)
  \]

### 2.2.4 Teorema de Bayes
- Actualización de probabilidades con nueva información:
  \[
  P(A_k|B) = \frac{P(A_k)P(B|A_k)}{\sum_{j=1}^n P(A_j)P(B|A_j)}
  \]

---

# 3. Variables Aleatorias

## 3.1 Variables Aleatorias Discretas
### 3.1.1 Definición
- Función que asigna a cada evento un valor numérico.

### 3.1.2 Ejemplos
1. **Distribución Binomial**:
   - Experimento: Lanzar una moneda 3 veces.
   - Probabilidades calculadas para cada número posible de caras.

2. **Distribución Hipergeométrica**:
   - Experimento: Seleccionar cartas de una caja con cartas rojas y blancas.
   - Probabilidad de obtener un cierto número de cartas rojas.

### 3.1.3 Función de Masa de Probabilidad (fmp)
- \(f_X(x) = P(X = x)\) para una variable aleatoria discreta.

## 3.2 Variables Aleatorias Continuas
### 3.2.1 Definición
- Función de densidad de probabilidad \(f_X(x)\) tal que \(P(X \in B) = \int_B f_X(x) \, dx\).

### 3.2.2 Función de Distribución Acumulada (FDA)
- \(F_X(x) = P(X \leq x)\)

### 3.2.3 Ejemplos
1. **Distribución Exponencial**:
   - Tiempo de vida de un bombillo: \(f(x) = \frac{1}{2} e^{-x/2}\) para \(x > 0\).
   - Calcula \(P(0.5 \leq X \leq 2.5)\) mediante integración.

---

# 4. Procesos Estocásticos y Cadenas de Markov

## 4.1 Definición
- Un proceso estocástico es una colección de variables aleatorias indexadas por el tiempo.

## 4.2 Cadena de Markov
### 4.2.1 Propiedad de Markov
- La probabilidad de un estado futuro depende solo del estado presente, no de los estados pasados.

### 4.2.2 Matriz de Transición
- Matriz que describe las probabilidades de pasar de un estado a otro.
- Ejemplo: Matriz de transición en problemas de movilidad social.

### 4.2.3 Proceso de Markov Homogéneo
- La matriz de transición es estacionaria, es decir, no depende del tiempo.

### 4.2.4 Ejemplos
1. **Movilidad Social**:
   - Modelo de transición entre estratos socioeconómicos con probabilidades estacionarias.

2. **Cálculo de Transiciones en Múltiples Pasos**:
   - Matriz de transición en \(k\) pasos: \(P^{(k)} = P^k\).

---


# 5. Métodos de Conteo

## 5.1 Permutaciones
### 5.1.1 Importancia al Orden
- Arreglos donde el orden importa.

## 5.2 Combinaciones
### 5.2.1 No Importa el Orden
- Selecciones donde el orden no importa.


---

# 6. Coeficientes Multinomiales

## 6.1 Coeficientes Binomiales
### 6.1.1 Descripción
- Relacionados con el desarrollo del binomio de Newton.

## 6.2 Coeficiente Multinomial
### 6.2.1 Descripción
- Cantidad de formas de distribuir \(n\) objetos en \(k\) grupos.

---

# 7. Variables Aleatorias Continuas

## 7.1 Función de Densidad de Probabilidad
- \(f_X(x) \geq 0\) y \(\int_{-\infty}^{\infty} f_X(x) \, dx = 1\).

### 7.1.1 Ejemplos
1. **Distribución Exponencial**:
   - Función de densidad: \(f(x) = \frac{1}{2} e^{-x/2}\) para \(x > 0\).
   - Función de distribución: \(F(x) = 1 - e^{-x/2}\) para \(x \geq 0\).

## 7.2 Probabilidad de Intervalos
- Probabilidad de que una variable aleatoria esté en un intervalo: \(P(a \leq X \leq b) = \int_a^b f_X(x) \, dx\).

### 7.2.1 Observaciones
- Para variables continuas, \(P(X = c) = 0\) para cualquier \(c\).

# Operable - Parciales
## Probabilidad de un evento
- ![[Pasted image 20241113235901.png]]
## Metodos de conteo
### Combinacion
- Binomial coefficients
- ![[Pasted image 20241113235627.png]]
- ![[Pasted image 20241113235652.png]]
- Multinomial coefficients
- ![[Pasted image 20241113235231.png]]
### Permutacion
- ![[Pasted image 20241113234602.png]]

## Eventos independientes 
### Independencia de dos eventos 
- ![[Pasted image 20241114001622.png]]

