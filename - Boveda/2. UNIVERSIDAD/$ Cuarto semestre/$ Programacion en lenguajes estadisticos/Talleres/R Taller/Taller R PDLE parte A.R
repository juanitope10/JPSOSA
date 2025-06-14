## Taller R PDLE

# ======================================================
# Punto 1: Hallar el rango de las siguientes matrices
# ======================================================

matriz_1a <- matrix(c(
  1, 21, 11, -12, -13,
  11, 41, 23, -11, -14,
  13, 2, -14, -25, 13,
  23, 18, 21, -17, -15
), nrow = 4, ncol = 5, byrow = TRUE)

matriz_1b <- matrix(c(
  12, 24, -23, 
  18, 10, 20, 
  10, -11, 15, 
  11, 24, -31
), nrow = 4, ncol = 3, byrow = TRUE)

matriz_1c <- matrix(c(
  12, 23, 
  10, -11, 
  27, -31, 
  -24, 36
), nrow = 4, ncol = 2, byrow = TRUE)

matriz_1d <- matrix(c(
  15, 17, 12, 
  18, -20, 13, 
  21, 10, 14, 
  -15, 18, 17
), nrow = 4, ncol = 3, byrow = TRUE)

# =========================================
# Punto 2: Multiplicación de matrices
# =========================================

# Definición de las matrices
matriz_2A <- matrix(c(
  41, 22, -15,
  16, 12, 27,
  37, 19, 22
), nrow = 3, byrow = TRUE)

matriz_2B <- matrix(c(
  12, 13, -32,
  31, -17, 32,
  21, -11, 20
), nrow = 3, byrow = TRUE)

matriz_2C <- matrix(c(
  12, 23, -18,
  21, 10, 21,
  11, -21, 17
), nrow = 3, byrow = TRUE)

# =========================================
# Punto 3: Resolver los sistemas usando determinantes
# =========================================

# a)
# Sistema:
# 15x + 3y = 5
# 2x - 7y = 1
matriz_3a <- matrix(c(15, 3, 2, -7), nrow = 2, byrow = TRUE)
matriz_3a_Ind <- c(5, 1)

# b)
# Sistema:
# 4x - y = 10
# 7x + 2y = 3
matriz_3b <- matrix(c(4, -1, 7, 2), nrow = 2, byrow = TRUE)
matriz_3b_Ind <- c(10, 3)

# c)
# Sistema:
# ax - 2by = c
# 3ax - 5by = 2c
matriz_3c <- matrix(c(a, -2*b, 3*a, -5*b), nrow = 2, byrow = TRUE)
matriz_3c_Ind <- c(1, 2)

# d)
# Sistema:
# 3x + 5y = 8
# 4x - 2y = 1
matriz_3d <- matrix(c(3, 5, 4, -2), nrow = 2, byrow = TRUE)
matriz_3d_Ind <- c(8, 1)

# e)
# Sistema:
# -7x - y = 5
# 4x + 2y = -2
matriz_3e <- matrix(c(-7, -1, 4, 2), nrow = 2, byrow = TRUE)
matriz_3e_Ind <- c(5, -2)

# =========================================
# Punto 4: Determinantes de matrices cuadradas
# =========================================

matriz_4a <- matrix(c(
  13, 21, 33,
  14, -11, 23,
  -12, -35, 11
), nrow = 3, byrow = TRUE)

matriz_4b <- matrix(c(
  12, 23, 10,
  14, -22, -13,
  27, 13, 21
), nrow = 3, byrow = TRUE)

matriz_4c <- matrix(c(
  18, 20, 11,
  13, -12, -13,
  -21, -13, -17
), nrow = 3, byrow = TRUE)

matriz_4d <- matrix(c(
  21, 10, 20,
  19, -21, -34,
  14, 25, 21
), nrow = 3, byrow = TRUE)

matriz_4e <- matrix(c(
  -12, 10, -21,
  21, 10, 17,
  14, 22, 17
), nrow = 3, byrow = TRUE)

matriz_4f <- matrix(c(
  "a", "b", "c", 
  "c", "a", "b", 
  "b", "c", "a"
),  nrow = 3, byrow = TRUE)

matriz_4g <- matrix(c(
  13, 17, -14,
  -23, 10, -22,
  17, 13, 13
), nrow = 3, byrow = TRUE)

matriz_4h <- matrix(c(
  21, 15, -17, -22,
  -12, -26, 18, 25,
  11, 23, -11, 22,
  -21, -16, 28, 13
), nrow = 4, byrow = TRUE)


matriz_4i <- matrix(c(
  13, -27, -15, 24,
  -15, 22, 17, -65,
  -12, 24, 10, -23,
  22, -13, -15, 31
), nrow = 4, byrow = TRUE)


matriz_4j <- matrix(c(
  11, 22, 17,
  22, 16, 14,
  31, 15, 18
), nrow = 3, byrow = TRUE)

# =========================================
# Punto 5: Inversas y pseudoinversas
# =========================================

matriz_5_a <- matrix(c(
  -15, 22, 11,
  32, -12, 22,
  11, 12, -35
), nrow = 3, byrow = TRUE)

matriz_5_b <- matrix(c(
  21, 11, -11,
  31, 10, -22
), nrow = 2, byrow = TRUE)

matriz_5_c <- matrix(c(
  33, -11, 24, 21,
  -21, 31, -15, -21,
  24, -25, 22, 10
), nrow = 3, byrow = TRUE)

matriz_5_d <- matrix(c(
  -21, 10, 31, 22,
  -31, 11, 20, -41,
  20, -11, 31, 23,
  20, 21, -41, -13,
  31, -21, 30, 11,
  21, 10, -21, -22
), nrow = 6, byrow = TRUE)


matriz_5_e <- matrix(c(
  11, 20, 13,
  12, -31, 16
), nrow = 2, byrow = TRUE)

matriz_5_f <- matrix(c(
  31, 21,
  21, 12,
  31, 43
), nrow = 3, byrow = TRUE)

matriz_5_g <- matrix(c(
  21, 22, 34, 43,
  13, -21, 32, -22,
  15, -24, 10, -27
), nrow = 3, byrow = TRUE)

matriz_5_h <- matrix(c(
  -16, 22, -32, -13,
  23, -31, 15, 22,
  -13, 21, 33, -31
), nrow = 3, byrow = TRUE)


# =========================================
# Punto 6: Multiplicación de matrices compatibles
# =========================================

# Matriz 6A
matriz_6A <- matrix(c(
  15, 22, 14,
  14, -21, 13
), nrow = 2, byrow = TRUE)

# Matriz 6B
matriz_6B <- matrix(c(
  1327, 31, 0,
  1,  2, -6
), nrow = 2, byrow = TRUE)

# Matriz 6C
matriz_6C <- matrix(c(
  31, 13, 21,
  10, 22, -13,
  20, 30, 15
), nrow = 3, byrow = TRUE)

# Matriz 6D
matriz_6D <- matrix(c(
  1, 3, 0,
  21, 10, -24,
  10, 21, 13
), nrow = 3, byrow = TRUE)

# Matriz 6E
matriz_6E <- matrix(c(
  31, 13, 21, 16,
  10, 20, -13, 7,
  10, 20, 15, 23,
  14, 18, 22, 21
), nrow = 4, byrow = TRUE)


# Matriz 6F
matriz_6F <- matrix(c(
  11, 30, 20,
  11, 20, -14, 
  20, 21, 13
), nrow = 3, byrow = TRUE)

# Matriz 6G
matriz_6G <- matrix(c(
  21, 13,
  10, 22
), nrow = 2, byrow = TRUE)

# Matriz 6H
matriz_6H <- matrix(c(
  10, 10,
  30, 12
), nrow = 2, byrow = TRUE)

# Matriz 6I
matriz_6I <- matrix(c(
  11, 41,
  21, 31
), nrow = 2, byrow = TRUE)


# =========================================
# Punto 7: Vectores y valores propios
# =========================================

matriz_7A <- matrix(c(
  11, 41, 21, 31
), nrow = 2, byrow = TRUE)

matriz_7B <- matrix(c(
  -23, 10, -21,
  -17, 15, -21,
  -16, 26, -12
), nrow = 3, byrow = TRUE)

matriz_7C <- matrix(c(
  21, -21, 12, -21
), nrow = 2, byrow = TRUE)

matriz_7D <- matrix(c(
  15, -21, 31, 13
), nrow = 2, byrow = TRUE)

matriz_7E <- matrix(c(
  13, -21, 13, -23
), nrow = 2, byrow = TRUE)

matriz_7F <- matrix(c(
  13, 21, 31, 12, 24, 12, 21, 11, 31
), nrow = 3, byrow = TRUE)

matriz_7G <- matrix(c(
  21, 31, 20, 31
), nrow = 2, byrow = TRUE)

matriz_7H <- matrix(c(
  1, i, 0, i
), nrow = 2, byrow = TRUE)

matriz_7I <- matrix(c(
  20, 10, 11, 10, 21, 20 , 11, 20 , 8
), nrow = 3, byrow = TRUE)

matriz_7J <- matrix(c(
  12, -13, 17, -14
), nrow = 2, byrow = TRUE)



#---------------
### Solucionario


#---------
# Punto 1
#---------
lista_matrices1 <- list(matriz_1a, matriz_1b, matriz_1c, matriz_1d)

for (nombre in seq_along(lista_matrices1)) {
  matriz <- lista_matrices1[[nombre]]
  rango <- qr(matriz)$rank
  cat("El rango de la matriz", nombre, "es:", rango, "\n")
}

#---------
# Punto 2
#---------
  
# Lista de matrices
lista_matrices2 <- list(matriz_2A, matriz_2B, matriz_2C)

# Función para calcular la matriz adjunta
adjunta <- function(matriz) {
  if (nrow(matriz) != ncol(matriz)) {
    stop("La matriz debe ser cuadrada para calcular su adjunta.")
  }
  n <- nrow(matriz)
  adj <- matrix(0, n, n)
  for (i in 1:n) {
    for (j in 1:n) {
      menor <- matriz[-i, -j]
      adj[j, i] <- (-1)^(i + j) * det(menor)
    }
  }
  return(adj)
}

# Procesamos cada matriz
for (nombre_matriz in seq_along(lista_matrices2)) {
  matriz_actual <- lista_matrices2[[nombre_matriz]]
  
  cat("\n\n==== MATRIZ", nombre_matriz, "====\n")
  
  # 1. Matriz original
  cat("\nMatriz original:\n")
  print(matriz_actual)
  
  # 2. Transpuesta
  transpuesta <- t(matriz_actual)
  cat("\nMatriz transpuesta:\n")
  print(transpuesta)
  
  # 3. Inversa (si existe)
  if (det(matriz_actual) != 0) {
    inversa <- solve(matriz_actual)
    cat("\nMatriz inversa:\n")
    print(inversa)
  } else {
    cat("\n⚠️ La matriz no tiene inversa (determinante = 0)\n")
  }
  
  # 4. Adjunta
  adj <- adjunta(matriz_actual)
  cat("\nMatriz adjunta:\n")
  print(adj)
}

# Extraer las matrices individuales de la lista
A <- lista_matrices2[[1]]  # matriz_2A
B <- lista_matrices2[[2]]  # matriz_2B
C <- lista_matrices2[[3]]  # matriz_2C

# Determinantes 

det_A <- det(A)
det_B <- det(B)
det_C <- det(C)

# Verificar Det(AB) = Det(A)Det(B)
det_AB <- det(A %*% B)
verificacion_AB <- all.equal(det_AB, det_A * det_B)

# Verificar Det(BC) = Det(B)Det(C)
det_BC <- det(B %*% C)
verificacion_BC <- all.equal(det_BC, det_B * det_C)

# Verificar Det(A) = Det(t(A)) y Det(B) = Det(t(B))
verificacion_det_AT <- all.equal(det_A, det(t(A)))
verificacion_det_BT <- all.equal(det_B, det(t(B)))

# 2. Calcular adjuntas y verificar propiedades
# Nota: En R no hay función directa para adjunta, debemos crearla
adjunta <- function(M) {
  det(M) * solve(M)
}

Adj_A <- adjunta(A)
Adj_C <- adjunta(C)

# Verificar Adj(A) × A = |A|I
verificacion_AdjA <- all.equal(Adj_A %*% A, det_A * diag(nrow(A)))

# Verificar Adj(C) × C = |C|I
verificacion_AdjC <- all.equal(Adj_C %*% C, det_C * diag(nrow(C)))

# Mostrar resultados
list(
  determinantes = c(det_A = det_A, det_B = det_B, det_C = det_C),
  verificaciones = list(
    det_AB = verificacion_AB,
    det_BC = verificacion_BC,
    det_AT = verificacion_det_AT,
    det_BT = verificacion_det_BT,
    AdjA = verificacion_AdjA,
    AdjC = verificacion_AdjC
  )
)

#---------
# Punto 3
#---------

# Lista de matrices (coeficientes de x e y)
lista_matrices3 <- list(
  matriz_3a,
  matriz_3b,
  matriz_3c, 
  matriz_3d, 
  matriz_3e 
)

lista_terminos_independientes3 <- list(matriz_3a_Ind, matriz_3b_Ind, matriz_3c_Ind,matriz_3d_Ind, matriz_3e_Ind)

# Función para resolver un sistema 2x2 con Cramer
resolver_cramer <- function(A, terminos_independientes) {
  det_A <- det(A)
  
  if (det_A == 0) {
    return("El sistema no tiene solución única (det(A) = 0).")
  } else {
    # Matriz A1 (reemplaza columna 1 por términos independientes)
    A1 <- A
    A1[, 1] <- terminos_independientes
    det_A1 <- det(A1)
    
    # Matriz A2 (reemplaza columna 2 por términos independientes)
    A2 <- A
    A2[, 2] <- terminos_independientes
    det_A2 <- det(A2)
    
    x <- det_A1 / det_A
    y <- det_A2 / det_A
    
    return(c(x = x, y = y))
  }
}

# Aplicamos Cramer a todos los sistemas
soluciones <- list()
for (i in 1:length(lista_matrices3)) {
  soluciones[[i]] <- resolver_cramer(
    lista_matrices3[[i]], 
    lista_terminos_independientes3[[i]]
  )
}

# Asignamos nombres a las soluciones para identificarlas
names(soluciones) <- names(lista_matrices3)

# Mostramos resultados
print(soluciones)


#--------
# Punto 4
#--------

lista_matrices4 <- list(matriz_4a, matriz_4b, matriz_4c, matriz_4d, matriz_4e, matriz_4f, matriz_4g, matriz_4h, matriz_4i, matriz_4j)

cofactores <- function(mat) {
  n <- nrow(mat)
  cof <- matrix(0, n, n)
  for (i in 1:n) {
    for (j in 1:n) {
      minor <- mat[-i, -j]
      cof[i, j] <- (-1)^(i + j) * det(minor)
    }
  }
  return(cof)
}

# Iterar sobre la lista
for (i in seq_along(lista_matrices4)) {
  cat("\nMatriz", i, ":\n")
  
  matriz <- lista_matrices4[[i]]
  
  cat("Determinante:\n")
  print(det(matriz))
  
  cat("Transpuesta:\n")
  print(t(matriz))
  
  if (det(matriz) != 0) {
    cat("Inversa:\n")
    print(solve(matriz))
    
    cat("Cofactores:\n")
    print(cofactores(matriz))
  } else {
    cat("La matriz no es inversible (det = 0), por lo tanto no se puede calcular la inversa ni los cofactores.\n")
  }
}

#--------
# Punto 5
#--------
library(MASS)

lista_matrices5 <- list(matriz_5_a, matriz_5_b, matriz_5_c, matriz_5_d, matriz_5_e, matriz_5_f, matriz_5_g, matriz_5_h)

# Función para verificar si una matriz es simétrica
es_simetrica <- function(mat, tol = 1e-8) {
  all(abs(mat - t(mat)) < tol)
}

# Función para verificar si una matriz es idempotente (A^2 = A)
es_idempotente <- function(mat, tol = 1e-8) {
  all(abs(mat %*% mat - mat) < tol)
}

# Verificaciones
for (i in seq_along(lista_matrices5)) {
  cat("\nMatriz", i, ":\n")
  A <- lista_matrices5[[i]]
  A_plus <- ginv(A)
  
  # a. AA⁺A = A
  a_valida <- all(abs(A %*% A_plus %*% A - A) < 1e-8)
  cat("a. AA⁺A = A →", a_valida, "\n")
  
  # b. A⁺AA⁺ = A⁺
  b_valida <- all(abs(A_plus %*% A %*% A_plus - A_plus) < 1e-8)
  cat("b. A⁺AA⁺ = A⁺ →", b_valida, "\n")
  
  # c. AA⁺ es simétrica e idempotente
  AAplus <- A %*% A_plus
  c_sim <- es_simetrica(AAplus)
  c_idem <- es_idempotente(AAplus)
  cat("c. AA⁺ simétrica:", c_sim, "e idempotente:", c_idem, "\n")
  
  # d. A⁺A es simétrica e idempotente
  AplusA <- A_plus %*% A
  d_sim <- es_simetrica(AplusA)
  d_idem <- es_idempotente(AplusA)
  cat("d. A⁺A simétrica:", d_sim, "e idempotente:", d_idem, "\n")
}

install.packages("MASS")


#--------
# Punto 6
#--------

lista_matrices6 <- list(matriz_6A, matriz_6B, matriz_6C, matriz_6D, matriz_6E, matriz_6F, matriz_6G, matriz_6H)

# Asignar las matrices a variables más cortas para mayor claridad
A <- lista_matrices6[[1]]
B <- lista_matrices6[[2]]
C <- lista_matrices6[[3]]
D <- lista_matrices6[[4]]
E <- lista_matrices6[[5]]
F <- lista_matrices6[[6]]
G <- lista_matrices6[[7]]
H <- lista_matrices6[[8]]

# Inciso a)
a_result <- t(A) %*% A

# Inciso b)
b_result <- t(B) %*% B

# Inciso c)
c_result <- B %*% t(B)

# Inciso d)
d_result <- t(C) %*% C

# Inciso e)
e_result <- t(A) + t(B)

# Inciso f)
f_result <- t(3 * D + 2 * F) + t(C)

# Inciso g)
g_result <- 2 * (E %*% E %*% E) + 3 * (E %*% E)

# Inciso h)
h_result <- 4 * (G %*% G %*% G %*% G) + 3 * H

# Inciso i)
i_result <- H
for (i in 1:9) {
  i_result <- i_result %*% H
}
i_result <- i_result %*% H - 50 * G


#--------
# Punto 7
#--------

lista_matrices7 <- list( matriz_7A, matriz_7B, matriz_7C, matriz_7D, matriz_7E, matriz_7F, matriz_7G, matriz_7H, matriz_7I, matriz_7J)

for (i in seq_along(lista_matrices7)) {
  cat("Matriz", i, ":\n")
  print(lista_matrices7[[i]])
  
  cat("Valores propios:\n")
  print(eigen(lista_matrices7[[i]])$values)
  
  cat("Vectores propios (columnas):\n")
  print(eigen(lista_matrices7[[i]])$vectors)
  
  cat("\n------------------------------\n")
}


#----------


