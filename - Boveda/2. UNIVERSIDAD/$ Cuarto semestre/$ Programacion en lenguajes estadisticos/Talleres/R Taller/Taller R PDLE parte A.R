## Taller R PDLE

# ======================================================
# Punto 1: Hallar el rango de las siguientes matrices
# ======================================================

# a)
matriz_1a <- matrix(c(
  1, 11, 13, 23,
  21, 41, 2, 18,
  11, 23, -14, 21,
  -12, -11, -25, -17,
  -13, -14, 13, -15
), nrow = 4, ncol = 5, byrow = FALSE)

# b)
matriz_1b <- matrix(c(
  12, 18, 10, 11,
  24, 10, -11, 24,
  -23, 20, 15, -31
), nrow = 4, ncol = 3, byrow = FALSE)

# c)
matriz_1c <- matrix(c(
  12, 10, 27, -24,
  23, -11, -31, 36
), nrow = 4, ncol = 2, byrow = FALSE)

# d)
matriz_1d <- matrix(c(
  15, 18, 21, -15,
  17, -20, 10, 18,
  12, 13, 14, 17
), nrow = 4, ncol = 3, byrow = FALSE)



# =========================================
# Punto 2: Multiplicación de matrices
# =========================================

matriz_2A <- matrix(c(
  41, 16, 37,
  22, 12, 19,
  -15, 27, 22
), nrow = 3, byrow = TRUE)

matriz_2B <- matrix(c(
  12, 31, 21,
  13, -17, -11,
  -32, 32, 20
), nrow = 3, byrow = TRUE)

matriz_2C <- matrix(c(
  12, 21, 11,
  23, 10, -21,
  -18, 21, 17
), nrow = 3, byrow = TRUE)

# =========================================
# Punto 3: Resolver los sistemas usando determinantes
# =========================================

# a)
# Sistema:
# 15x + 3y = 5
# 2x - 7y = 1

# b)
# Sistema:
# 4x - y = 10
# 7x + 2y = 3

# c)
# Sistema:
# ax - 2by = c
# 3ax - 5by = 2c

# d)
# Sistema:
# 3x + 5y = 8
# 4x - 2y = 1

# e)
# Sistema:
# -7x - y = 5
# 4x + 2y = -2

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

matriz_4g <- matrix(c(
  13, 17, -14,
  -23, 10, -22,
  17, 13, 13
), nrow = 3, byrow = TRUE)

matriz_4h <- matrix(c(
  21, -12, 11, -21,
  15, -26, 23, -16,
  -17, 18, -11, 28,
  -22, 25, 22, 13
), nrow = 4, byrow = TRUE)

matriz_4i <- matrix(c(
  13, -15, -12, 22,
  -27, 22, 24, -13,
  -15, 17, 10, -15,
  24, -65, -23, 31
), nrow = 4, byrow = TRUE)

matriz_4j <- matrix(c(
  11, 22, 17,
  22, 16, 14,
  31, 15, 18
), nrow = 3, byrow = TRUE)

# =========================================
# Punto 5: Inversas y pseudoinversas
# =========================================

matriz_5_1 <- matrix(c(
  -15, 22, 11,
  32, -12, 22,
  11, 12, -35
), nrow = 3, byrow = TRUE)

matriz_5_2 <- matrix(c(
  21, 11, -11,
  31, 10, -22
), nrow = 2, byrow = TRUE)

matriz_5_3 <- matrix(c(
  33, -11, 24, 21,
  -21, 31, -15, -21,
  24, -25, 22, 10
), nrow = 3, byrow = TRUE)

matriz_5_4 <- matrix(c(
  -21, -31, 20, 20, 31, 21,
  10, 11, -11, 21, -21, 10,
  31, 20, 31, -41, 30, -21,
  22, -41, 23, -13, 11, -22
), nrow = 6, byrow = FALSE)

matriz_5_5 <- matrix(c(
  11, 20, 13,
  12, -31, 16
), nrow = 2, byrow = TRUE)

matriz_5_6 <- matrix(c(
  31, 21,
  21, 12,
  31, 43
), nrow = 3, byrow = TRUE)

matriz_5_7 <- matrix(c(
  21, 13, 15,
  22, -21, -24,
  34, 32, 10,
  43, -22, -27
), nrow = 3, byrow = FALSE)

matriz_5_8 <- matrix(c(
  -16, 23, -13,
  22, -31, 21,
  -32, 15, 33,
  -13, 22, -31
), nrow = 3, byrow = FALSE)

# =========================================
# Punto 6: Multiplicación de matrices compatibles
# =========================================

matriz_6A <- matrix(c(
  15, 14,
  22, -21,
  14, 13
), nrow = 2, byrow = TRUE)

matriz_6B <- matrix(c(
  13, 1,
  27, 2,
  31, -6
), nrow = 2, byrow = TRUE)

matriz_6C <- matrix(c(
  31, 10, 20,
  13, 22, 30,
  21, -13, 15
), nrow = 3, byrow = TRUE)

matriz_6D <- matrix(c(
  1, 21, 10,
  3, 10, 21,
  0, -24, 13
), nrow = 3, byrow = TRUE)

matriz_6E <- matrix(c(
  31, 10, 10, 14,
  13, 20, 20, 18,
  21, -13, 15, 22,
  16, 7, 23, 21
), nrow = 4, byrow = TRUE)

# =========================================
# Punto 7: Vectores y valores propios
# =========================================

matriz_7A <- matrix(c(
  21, 16, 17,
  19, -13, 14,
  23, 11, -15
), nrow = 3, byrow = TRUE)

matriz_7B <- matrix(c(
  14, -12, 13,
  -25, 11, -21,
  32, 17, 18
), nrow = 3, byrow = TRUE)

matriz_7C <- matrix(c(
  23, -18, 11,
  19, -15, 22,
  13, 16, 15
), nrow = 3, byrow = TRUE)

matriz_7D <- matrix(c(
  12, 21, -31,
  14, 20, 23,
  15, 12, 17
), nrow = 3, byrow = TRUE)

matriz_7E <- matrix(c(
  11, 13, 14,
  22, 17, -18,
  21, 14, 15
), nrow = 3, byrow = TRUE)

matriz_7F <- matrix(c(
  31, -11, 24,
  23, -25, 22,
  20, 15, 18
), nrow = 3, byrow = TRUE)

matriz_7G <- matrix(c(
  14, 10, 11,
  12, -21, -13,
  10, 25, 19
), nrow = 3, byrow = TRUE)

matriz_7H <- matrix(c(
  17, 21, 20,
  -25, 14, -11,
  21, -13, 12
), nrow = 3, byrow = TRUE)

matriz_7I <- matrix(c(
  12, -17, 21,
  15, -21, -14,
  -13, 25, 11
), nrow = 3, byrow = TRUE)

matriz_7J <- matrix(c(
  21, 23, -21,
  11, 13, 17,
  -25, -23, 20
), nrow = 3, byrow = TRUE)
