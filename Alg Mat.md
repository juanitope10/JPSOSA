# Teorico
## 1. Vectores Característicos y Valores Característicos
### 1.1 Valores Propios y Vectores Propios
- Definición: Si \(A\) es una matriz cuadrada y \(\lambda\) es un número tal que existe un vector no nulo \(v\) que satisface \(A v = \lambda v\), entonces:
  - \(\lambda\) es un **valor propio**.
  - \(v\) es un **vector propio** correspondiente.
- Aplicación: Identificación de direcciones invariantes bajo la transformación lineal \(A\).

#### 1.1.1 Descomposición de Sylvester
- Descompone una matriz en términos de sus valores y vectores propios.
- Utilizada en la solución de sistemas de ecuaciones diferenciales.

### 1.2 Matrices Semejantes y Diagonalización
- **Matrices semejantes**: Dos matrices \(A\) y \(B\) son semejantes si existe una matriz invertible \(P\) tal que \(B = P^{-1}AP\).
- **Diagonalización**: Proceso de encontrar una matriz diagonal \(D\) tal que \(A = PDP^{-1}\), donde \(P\) contiene los vectores propios de \(A\).
- Condiciones para diagonalización: \(A\) debe tener un conjunto completo de vectores propios linealmente independientes.

### 1.3 Valores Propios Complejos
- Extiende el concepto de valores propios a números complejos.
- Importante para analizar matrices con coeficientes reales o complejos.

### 1.4 Diagonalización de Matrices Simétricas
- Propiedad: Una matriz simétrica real siempre es diagonalizable por una matriz ortogonal.
- Teorema: Todos los valores propios de una matriz simétrica son reales.

### 1.5 Vectores Propios Generalizados
- Definición: Cuando una matriz no es diagonalizable, se utilizan vectores propios generalizados para extender la diagonalización.
- Aplicación: Forma canónica de Jordan.

### 1.6 Matriz de Proyeccion Espectral
- Una matriz de proyección espectral es una matriz que se utiliza para descomponer una matriz cuadrada en términos de sus valores propios y los subespacios asociados. En el contexto de la teoría espectral, la matriz de proyección espectral se define como parte de la descomposición de una matriz en función de sus valores propios

## 2. Descomposición de Matrices
### 2.1 Triangularización de una Matriz
- Proceso para transformar una matriz en una forma triangular superior o inferior.
- Herramienta útil en la resolución de sistemas lineales y cálculo de determinantes.

### 2.2 Factorización QR
- Descompone una matriz \(A\) en el producto \(A = QR\), donde:
  - \(Q\) es una matriz ortogonal.
  - \(R\) es una matriz triangular superior.
- Aplicación: Método eficiente para resolver sistemas lineales y en algoritmos de minimización.

### 2.3 Polinomio Mínimo
- Definición: El polinomio de menor grado que anula la matriz \(A\).
- Importancia: Relacionado con la estructura algebraica de la matriz.

### 2.4 Forma Canónica de Jordan
- Descompone una matriz en bloques de Jordan, facilitando el estudio de la estructura algebraica de matrices no diagonalizables.
- Aplicación: Resolución de sistemas de ecuaciones diferenciales lineales.

### 2.5 Raíces Cuadradas
- Proceso de encontrar una matriz \(B\) tal que \(B^2 = A\).
- Se aplica en teoría de control y cálculos matriciales avanzados.

#### 2.5.1 Raíces Cuadradas de Matrices Simétricas
- Propiedad: Si \(A\) es una matriz simétrica positiva definida, entonces existen raíces cuadradas únicas.

#### 2.5.2 Descomposición de Cholesky
- Descompone una matriz simétrica y definida positiva \(A\) como \(A = LL^T\), donde \(L\) es una matriz triangular inferior.
- Aplicación: Resolución eficiente de sistemas de ecuaciones lineales.

### 2.6 Descomposición en Valores Singulares
- Descompone una matriz \(A\) como \(A = U \Sigma V^T\), donde:
  - \(U\) y \(V\) son matrices ortogonales.
  - \(\Sigma\) es una matriz diagonal con valores singulares.
- Aplicación: Compresión de datos, reducción de dimensionalidad y análisis de sistemas sobredeterminados.

---

## 3. Matrices Complejas
### 3.1 Clases Especiales de Matrices Complejas
#### 3.1.1 Matrices Hermitianas
- Definición: Una matriz \(A\) es hermitiana si \(A = A^*\), donde \(A^*\) es la conjugada transpuesta de \(A\).
- Propiedad: Todos los valores propios de una matriz hermitiana son reales.

#### 3.1.2 Matrices Antihermitianas
- Definición: Una matriz \(A\) es antihermitiana si \(A = -A^*\).
- Propiedad: Los valores propios de una matriz antihermitiana son puramente imaginarios.

#### 3.1.3 Matrices Unitarias
- Definición: Una matriz \(U\) es unitaria si \(U U^* = U^* U = I\), donde \(I\) es la matriz identidad.
- Propiedad: Las matrices unitarias conservan la norma de los vectores.

#### 3.1.4 Matrices Normales
- Definición: Una matriz \(A\) es normal si \(AA^* = A^*A\).
- Importancia: Las matrices normales son diagonalizables mediante matrices unitarias.

### 3.2 Factorizaciones
#### 3.2.1 Forma Canónica de Jordan
- Descompone una matriz compleja en bloques de Jordan.
- Útil para el análisis de matrices no diagonalizables.

#### 3.2.2 Descomposición en Valores Singulares
- Extiende la descomposición en valores singulares (SVD) al caso de matrices complejas.
- Aplicación: Procesamiento de señales, compresión de imágenes y análisis de datos complejos.

# Operable - Quices 
## Complemento de Schur 
## Matriz de proyeccion espectral
## Descomposicion de Sylvester
## Diagonalizacion 
- ![[Pasted image 20241114004604.png]]
- 
