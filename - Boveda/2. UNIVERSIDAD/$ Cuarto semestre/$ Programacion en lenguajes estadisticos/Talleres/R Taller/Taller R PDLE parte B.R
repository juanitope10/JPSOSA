# Si no tienes el paquete ggplot2, instálalo
install.packages("ggplot2")

# Carga el paquete
library(ggplot2)
# Instalar el paquete maps si no lo tienes
if (!require(maps)) {
  install.packages("maps")
  library(maps)
} else {
  library(maps)
}
library(readr)

# Cargue de bases de datos
#--------
# Punto 1 ------------

# Cargar el dataset us.cities y guardarlo en una variable
datos_ciudades_1 <- us.cities

# Mostrar las primeras filas para verificar
head(datos_ciudades_1)


# Punto 2 ------------

# Guarda el dataset diamonds en una variable
datos_diamantes_2 <- diamonds

# Revisa las primeras filas para confirmar
head(datos_diamantes_2)

# Punto 3 ------------

# Punto 4 ------------

# Punto 5 ------------

Enero <- read_csv("Desktop/JPSOSA/- Boveda/2. UNIVERSIDAD/$ Cuarto semestre/$ Programacion en lenguajes estadisticos/Talleres/R Taller/Data/Enero.csv")
View(Enero)

# Punto 6 ------------

Abril <- read_csv("Desktop/JPSOSA/- Boveda/2. UNIVERSIDAD/$ Cuarto semestre/$ Programacion en lenguajes estadisticos/Talleres/R Taller/Data/Abril.csv")
View(Abril)

# Punto 7 ------------

Noviembre <- read_csv("Desktop/JPSOSA/- Boveda/2. UNIVERSIDAD/$ Cuarto semestre/$ Programacion en lenguajes estadisticos/Talleres/R Taller/Data/Noviembre.csv")
View(Noviembre)

# Punto 8 -------------


# Punto 9 ------------


# Punto 10 ------------


# Punto 11 ------------


# Punto 12 ------------


# Punto 13 ------------


# Punto 14 ------------










