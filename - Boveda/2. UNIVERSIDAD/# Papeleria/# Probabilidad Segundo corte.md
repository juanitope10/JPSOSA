# 2. Variables aleatorias y sus distribuciones 
## Variable aleatoria
- Sea (X,F,P) un espacio de probabilidad y (X*,F*) un espcio medible. 
- Una F->F* es una aplicacion X: X->X* tal que para todo A perteneciente a F* se tiene que X⁻¹(A) pertenece a F
- Si X*, F*) = (R, B), entonces, se dice que X es una variable aleatoria real.

### Funcion de distribucion 
- Sea X una variable aleatoria real. La funcion Fx definida sobre R por medio de:
- Fx(x):= Px((-infinito, x])     := P(X <= x)
- se le llama funcion de distribucion acumulativa de la variable aleatoria X
#### *TEOREMAS*
1. Si x <= y entonces Fx(x)<=Fx(y)
2. Fx(X⁺) := lim x-> 0⁺ Fx (x+h) = Fx(X) Para todo x pertenecinete a R
3. Lim x -> Infinito Fx(x) = 1
4. Lim x -> -Infinito Fx(x) = 0

--- 
 
## 2.1 Variables aleatorias discretas
- Sea X una variable aleatoria real y Fx su funcion de distribucion. Se dice que Fx presenta un salto
- en el punto a perteneciente a R si Fx(a) - Fx(a⁻) ≠ 0
- La diferencia se llama magnitud de salto y por las propiedades desarolladas P(X=a)

### Funcion de densidad discreta 
- Sea X una variable aleatoria real discreta con valor x1,x2,...,xn. La funcion fx, definida sobre R, mediante
- fx(x){ P(X=Xi) si x = x1,x2,...,xn   ,    0 en otro caso}
- se le llama funcon de densidad de variable aleatoria

> *Ejemplo* 

Sea x un variable discreta con funcion de densidad dada por:
$$
F_X(x) = 
\begin{cases}
0 & \text{si } x < -2, \\
\frac{1}{7} & \text{si } -2 \leq x < \frac{1}{2}, \\
\frac{4}{7} & \text{si } \frac{1}{2} \leq x < \sqrt{2}, \\
1 & \text{si } x \geq \sqrt{2}.
\end{cases}
$$
- En este caso se tiene que la función de densidad, de la variable aleatoria \( X \), está dada por:
$$
f_X(x) = 
\begin{cases}
\frac{1}{7} & \text{si } x = -2, \\
\frac{3}{7} & \text{si } x = \frac{1}{2}, \\
\frac{3}{7} & \text{si } x = \sqrt{2}, \\
0 & \text{en otro caso}.
\end{cases}
$$

---

## 2.2 Variables aleatorias absolutamente continuas 
- Sea X una variable aleatoria real definida sobre el espacio de probabilidad (G,F,P). 
- Se dice que X es asbolutamente continua, si y solo si existe una funcion real no negativa e
- integrable fx, tal que, para todo x perteneciente a R, se satisface:
$$
Fx(X) = \int_{-\infty}^{x} fx(x) \, dx
$$
- la funcion fx recibe el nombre de funcion de densidad (fdd) de la variable aleatoria X
- P(a < X <= b) = Fx(b)-Fx(a)
- Fy(Y) = P(Y <= y)

### *DIAGRAMA*         
#### Funcion de densidad fx(X)  
- Dado una funcion de densidad podemos determinar dos cosas 
 $$ Fx(X) $$
#### Integrando
- $$ Fx(X) = \int_{-\infty}^{+\infty} fx(x) \, dx   $$                                                       Probabilidad dado intervalos
- $$ Fx(X) = \int_{-\infty}^{x} fx(x) \, dx $$ Probabilidad hasta un punto                  *DISTRIBUCION*

---

## 2.3 Distribucion de una funcion de una variable aleatoria

- Supóngase que X es una variable aleatoria real definida sobre el espacio de probabilidad
- (G,F,P) y sea Y = K(X) es una variable aleatoria definida sobre el mismo espacio. 
- Es posible determinar la funcion de distribucion en terminos de X dado la variable aleatoria Y.

--- 

## 2.4 Valor esperado y varianza de una variable aleatoria








---
---
> Practica 
- Pasar de funcion de densidad a funcion de distribucion, calcular probabilidades




