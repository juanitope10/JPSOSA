# Matrices complejas
## Clases especiales de matrices complejas
### 1. Matrices hermitiana
- Sea A perteneciente C^(n*n) matriz cuadrada con entredas de numeros complejos. 
- A es una matriz hermitiana si satisface A = A^†     
- Adjunto hermitiano: 
$$
A^\dagger = A
$$

- Conjugado complejo de cada elemento y aplicar transpuesta   
$$
A =
\begin{bmatrix}
3 & 2+i & -i \\
2-i & 0 & 4+2i \\
i & 4-2i & 5 
\end{bmatrix}
\\[1cm]
$$
$$
C12 = (2+i)⁻ = 2-i = C21
$$
### Teoremas
- Si A es una matriz hermitiana, entonces sus valores propios son reales
- Sea A una matriz hermitiana de tamaño n*n. Entonces, los vectores propios correspondientes a
- valores propios distintos de A son ortogonales.
### 2. Matrices de proyeccion espectral compleja 
- Sea A una matriz compleja de tamaño n × n que no tiene valores propios múltiples y sean vk⁻, 
- wk⁻ los vectores propios a derecha e izquierda de A, es decir, los vectores propios de A 
- y A^H asociados a los valores propios λk y λk , respectivamente; se deﬁne la matriz de 
- proyección espectral compleja correspondiente para cada λk como:


### Matrices antihermitianas
- Una matriz antisimetrica es una matriz que tiene la propiedad de A^t = -A, las antihermitianas son el analogo para el caso complejo $$ A^H = -A  $$

### Matrices unitaria
- Recordemos que una matriz ortogonal A es una matriz real que tiene la propiedad de que A^t = A-1, las matrices unitarias son el analogo para el caso complejo
- Una matriz cuadrada U de componentes complejas se dice que es una matriz unitaria si $$ U^H*U = I $$ En consecuencia, U es no singular y se tiene que $$ U⁻¹ = U^H $$

### Matrices normales
- Se dice que la matriz de componentes complejos N de tamaño n*n es normal si conmuta N^H, es decir: $$ N N^H = N^H N $$
- Las matrices hermitianas, las antihermitianas y las unitarias son matrices normales.

---
# Factorizaciones
## Matrices complejas semejantes:
- Una matriz de componentes complejas A de tamaño n×n es semejante a una matriz de componentes complejas B de tamaño n × n si existe una matriz de componentes complejas no singular P de tamaño n × n tal que: $$ B = P⁻¹ A P $$
- De manera analoga se dice que A y B son semejantes si y solo si eciste una matriz de componentes complejos no singular P, tal que $$ PB=AP $$
- Teorema: Las matrices semejantes tienen el mismo polinomio, y por tanto mismos valores propios.
## Matrices congruentes hermitianas:
- Dos matrices hermitianas A y B de tamaño n × n son congruentes hermitianas si existe una matriz P no singular de componentes complejas de tamaño n × n tal que $$ A = P^HBP $$
## Descomposicion de Sylvester:
- Sea A una matriz compleja de tamaño n × n con valores propios distintos λ1 , λ2 , . . . , λn , entonces A se puede escribir como:
$$ A = \sum_{n=1}^{k} λ_n E(λ_n) $$
## Teorema de Schur:
- Sea A una matriz compleja de tamaño n×n. Entonces A es semejante a una matriz triangular superior T , mediante una matriz unitaria U, es decir $$ T = U^HAU $$
- Entonces, se dice que A es triangularizable por una matriz unitaria U.
## Forma canonica de Jordan 
- 
## Descomposicion en valores singulares
-
## Descomposicion polar
- 
### A izquierda
### A derecha



---
 
# 5 Formas bilineales 
## Definicion 5.1
- Sean U, V y W espacios vectoriales reales. Una aplicación g : U × V → W se llama bilineal si satisface las siguientes propiedades:
- Cerrado bajo la suma y cerrado bajo el producto por escalar.

### *TEOREMAS*
- Sea g : R^m × R^n → R una aplicación bilineal. Entonces existe una matriz única A de tamaño m × n, tal que $$ g() $$

## Definicion 5.3: Forma bilineal
- Si en la deﬁnición 5.1 se tiene que los espacios U = V y el espacio W = R de tal manera que g aplica a V × V en R, entonces se dice que g es una forma bilineal sobre V.

### *TEOREMAS*
- Sean g1 , g2 : V × V → R dos formas bilineales distintas sobre V. Entonces:
1. g1+g2 es una forma bilineal
2. ag1 es una forma bilineal, donde a pertenece R

## Definicion 5.4: Rango de una forma bilineal
- El rango de una forma bilineal g sobre V, escrito ρ(g), se deﬁne como el rango de la matriz que representa a g. Se dice que g es degenerada o no degenerada según si ρ(g) < dim V o ρ(g) = dim V .
- Definicion 5.5: Sea g : V × V → R una forma bilineal sobre V. Entonces g es simétrica si para todo v^ , w^ ∈ V, se cumple que: 
$$ g(v,w) = g (w,v) $$

## Definicion 5.5:

## Definicion 5.6:

## Definicion 5.6: 

## Definicion 5.7: Inercia

## Definicion 5.8: Signatura

---

# 5.2 Formas cuadraticas:
- Definicion: Cuando se considera el cuadrado de la norma de un vector ||X||^2 = X^t X; tales sumas y expresiones en formaobtiene la expresión X general se denominan formas cuadráticas.

## Definicion 5.9: 
- 
## Definicion 5.10: Forma polar de una forma cuadratica

## Definicion 5.11:

--- 
 
# 5.3 Diagonalizacion de una forma cuadratica

# 5.4 Ley de la inercia de formas cuadraticas

# 5.5 Clasificacion de formas cuadraticas
-En esta sección se clasiﬁcan las formas cuadráticas según sus valores posibles. Una forma cuadrática F : Rn → R es una función de valor real con dominio en R^n

## Definicion 5.12:
- Definida positiva 
- Definida negativa
- Indefinida








