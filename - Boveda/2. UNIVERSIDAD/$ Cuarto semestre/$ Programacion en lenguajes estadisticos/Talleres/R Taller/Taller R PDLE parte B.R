# Instalar paquetes necesarios (si no están instalados)
install.packages("maps")
install.packages("ggplot2")
install.packages("plotly")

# Cargar librerías
library(maps)
library(ggplot2)
library(plotly)
library(dplyr)
library(readr)


## Primer punto -------------

# Cargar los datos
data("us.cities")

# Ver estructura del dataset
str(us.cities)

# Ver las primeras filas
head(us.cities)

dim(us.cities)  # número de filas y columnas

summary(us.cities)

# Tabla cruzada entre "name" y "country.etc"
tabla_contingencia <- table(us.cities$name, us.cities$country.etc)

# Mostrar tabla
tabla_contingencia

# Configurar múltiples gráficos por ventana
par(mfrow=c(3, 3), bg = "gray95", col.main = "blue", col.lab = "black")

# Vector de variables
vars <- c("pop", "lat", "long")

for (var in vars) {
  # Boxplot
  boxplot(us.cities[[var]], main = paste("Boxplot de", var),
          col = "skyblue", border = "darkblue", xlab = var)
  
  # Diagrama de puntos
  plot(us.cities[[var]], main = paste("Puntos de", var),
       col = "red", pch = 16, xlab = "Índice", ylab = var)
  
  # Histograma
  hist(us.cities[[var]], main = paste("Histograma de", var),
       col = "orange", border = "white", xlab = var)
}

ggplot(us.cities, aes(x = lat, y = long)) +
  geom_point(color = "darkgreen") +
  labs(title = "Distribución geográfica", x = "Latitud", y = "Longitud")

ggplot(us.cities, aes(x = lat, y = long)) +
  geom_point(alpha = 0.4) +
  geom_smooth(method = "lm", se = TRUE, color = "blue") +
  labs(title = "Regresión lat vs long", x = "Latitud", y = "Longitud")

plot_ly(us.cities, x = ~lat, y = ~long, type = "scatter", mode = "markers")

plot_ly(us.cities, x = ~lat, y = ~long, color = ~country.etc, type = "scatter", mode = "markers")

plot_ly(us.cities, y = ~lat, color = ~country.etc, type = "box")

plot_ly(us.cities, x = ~country.etc, type = "bar")

## Segundo punto ------------

# ----------------------------------------
# a) Información suministrada por R
# ----------------------------------------
# Visualiza la descripción de la base de datos
?diamonds

# ----------------------------------------
# b) Dimensión de los datos
# ----------------------------------------
dim(diamonds)  # Muestra número de filas y columnas

# ----------------------------------------
# c) Summary de las variables
# ----------------------------------------
summary(diamonds)  # Estadísticas descriptivas básicas

# ----------------------------------------
# d) Tabla de contingencia de variables cualitativas
# ----------------------------------------
# Tablas cruzadas entre variables categóricas
table_cut_color <- table(diamonds$cut, diamonds$color)
table_cut_clarity <- table(diamonds$cut, diamonds$clarity)
table_color_clarity <- table(diamonds$color, diamonds$clarity)

# Mostrar las tablas con márgenes
addmargins(table_cut_color)
addmargins(table_cut_clarity)
addmargins(table_color_clarity)

# ----------------------------------------
# e) Gráficos: Boxplot, Diagrama de puntos y Histogramas
# ----------------------------------------
# Configurar layout de gráficos
par(bg = "lightgray", mfrow = c(3, 4), mar = c(4, 4, 2, 1))

# Variables numéricas a graficar
vars_numericas <- c("carat", "depth", "table", "price", "x", "y", "z")

# Para cada variable, graficar histograma, boxplot y scatter plot
for (var in vars_numericas) {
  hist(diamonds[[var]], col = "steelblue", main = paste("Histograma de", var),
       xlab = var, border = "white")
  boxplot(diamonds[[var]], col = "orange", main = paste("Boxplot de", var),
          horizontal = TRUE, xlab = var)
  plot(diamonds[[var]], col = "darkgreen", pch = 20, main = paste("Puntos de", var),
       ylab = var, xlab = "Índice")
}

# ----------------------------------------
# f) Gráficos con ggplot2
# ----------------------------------------

# 1. geom_point() con color
ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point() +
  ggtitle("Precio vs Carat - geom_point") +
  xlab("Carat") + ylab("Price")

# 2. geom_point() + stat_smooth()
ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point() +
  stat_smooth() +
  ggtitle("Precio vs Carat - con stat_smooth()") +
  xlab("Carat") + ylab("Price")

# 3. geom_point() + stat_smooth(se = FALSE)
ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point() +
  stat_smooth(se = FALSE) +
  ggtitle("Precio vs Carat - sin bandas de confianza") +
  xlab("Carat") + ylab("Price")

# 4. geom_point() + stat_smooth(method = "lm")
ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point() +
  stat_smooth(method = "lm") +
  ggtitle("Regresión Lineal con Bandas de Confianza") +
  xlab("Carat") + ylab("Price")

# ----------------------------------------
# g) Gráficos con plotly
# ----------------------------------------

# 1. Gráfico de puntos categorizado por color
plot_ly(data = diamonds, x = ~carat, y = ~price, color = ~cut,
        type = 'scatter', mode = 'markers') %>%
  layout(title = "Puntos por Carat y Precio (cut como color)")

# 2. Gráfico tipo box por variable categórica
plot_ly(data = diamonds, x = ~cut, y = ~price, type = "box", color = ~cut) %>%
  layout(title = "Boxplot de Precio por Tipo de Corte")

# 3. Gráfico tipo bar con media del precio por tipo de corte
diamonds_summary <- diamonds %>%
  group_by(cut) %>%
  summarise(media_precio = mean(price))

plot_ly(diamonds_summary, x = ~cut, y = ~media_precio, type = "bar", color = ~cut) %>%
  layout(title = "Precio Promedio por Tipo de Corte")


## Tercer punto -----------

# Cargar base de datos
WalmartSales <- read_csv("Desktop/JPSOSA/- Boveda/2. UNIVERSIDAD/$ Cuarto semestre/$ Programacion en lenguajes estadisticos/Talleres/R Taller/Data/WalmartSales.csv")

# Ver los primeros registros
View(WalmartSales)

# ======================================
# a) Información suministrada por Kaggle
# ======================================
# Esta base contiene información semanal de ventas en Walmart, incluyendo:
# - Fecha de venta
# - Tipo de tienda (A, B o C)
# - Ventas semanales
# - Si la semana incluye festivo
# - Variables económicas como temperatura, precio del combustible, CPI y desempleo.

# ===========================
# b) Dimensión de los datos
# ===========================
dim(WalmartSales)

# ================================
# c) Summary de las variables
# ================================
summary(WalmartSales)
str(WalmartSales)  # Tipo de cada variable

# ============================================
# d) Dos tablas de contingencia (rotuladas)
# ============================================

# Tabla 1: Tipo de tienda vs semana festiva
tabla1 <- table(Tipo_Tienda=WalmartSales$Type, Semana_Festiva=WalmartSales$Holiday_Flag)
print(tabla1)

# Tabla 2: Tipo de tienda vs mes
WalmartSales$Month <- format(as.Date(WalmartSales$Date, format="%Y-%m-%d"), "%m")
tabla2 <- table(Tipo_Tienda=WalmartSales$Type, Mes=WalmartSales$Month)
print(tabla2)

# ===============================================================
# e) Diagramas con funciones base: boxplot, plot, histograma
# ===============================================================

# Mostrar 2x2 gráficos con fondo azul
par(mfrow=c(2,2), bg = "lightblue", col.main = "blue")

# Boxplot: ventas por tipo de tienda
boxplot(WalmartSales$Weekly_Sales ~ WalmartSales$Type,
        col="orange", border="brown",
        main="Ventas semanales por tipo de tienda",
        xlab="Tipo de tienda", ylab="Ventas semanales")

# Diagrama de puntos: temperatura vs ventas
plot(WalmartSales$Temperature, WalmartSales$Weekly_Sales,
     col="darkgreen", pch=19,
     main="Ventas vs Temperatura", xlab="Temperatura", ylab="Ventas")

# Histograma: distribución del CPI
hist(WalmartSales$CPI,
     col="purple", border="black",
     main="Histograma del CPI", xlab="CPI", ylab="Frecuencia")

# Diagrama de puntos: fuel price vs ventas
plot(WalmartSales$Fuel_Price, WalmartSales$Weekly_Sales,
     col="blue", pch=17,
     main="Ventas vs Precio de Combustible", xlab="Precio Combustible", ylab="Ventas")

# ===============================
# f) ggplot2: geom_point y lm
# ===============================

# Gráfico de puntos con ggplot2
ggplot(WalmartSales, aes(x=Temperature, y=Weekly_Sales)) +
  geom_point(color="steelblue") +
  labs(title="Scatter: Temperatura vs Ventas", x="Temperatura", y="Ventas")

# Gráfico con regresión lineal y bandas de confianza
ggplot(WalmartSales, aes(x=Fuel_Price, y=Weekly_Sales)) +
  geom_point(color="darkred") +
  geom_smooth(method="lm", se=TRUE, color="black") +
  labs(title="Regresión: Combustible vs Ventas", x="Precio de Combustible", y="Ventas")

# ==============================
# g) plotly: gráficos interactivos
# ==============================

# Gráfico de puntos interactivo
plot_ly(data=WalmartSales, x=~Temperature, y=~Weekly_Sales,
        type='scatter', mode='markers', color=~Type)

# Boxplot interactivo
plot_ly(WalmartSales, y=~Weekly_Sales, x=~Type,
        type="box", color=~Type)

# Boxplot por tipo de tienda (variable diferente)
plot_ly(WalmartSales, y=~CPI, x=~Type,
        type="box", color=~Type)

# Gráfico de barras interactivo por tipo de tienda
plot_ly(WalmartSales, x=~Type, y=~Weekly_Sales,
        type="bar", color=~Type)


## Cuarto punto -----------

# ======================
# CARGA DE LA BASE DE DATOS
# ======================
HousePrediction <- read_csv("Desktop/JPSOSA/- Boveda/2. UNIVERSIDAD/$ Cuarto semestre/$ Programacion en lenguajes estadisticos/Talleres/R Taller/Data/HousePrediction.csv")
View(HousePrediction)

# ============================
# a) Información de Kaggle
# ============================
# Esta base de datos contiene información de casas en Ames, Iowa.
# Variables incluidas: número de habitaciones, tamaño en pies cuadrados,
# año de construcción, calidad de materiales, zona, precio de venta, entre otros.
# Se usa comúnmente para modelos de predicción de precios inmobiliarios.

# ============================
# b) Dimensión de los datos
# ============================
dim(HousePrediction)

# ============================
# c) Summary de las variables
# ============================
summary(HousePrediction)
str(HousePrediction)

# ============================
# d) Tablas de contingencia
# ============================

# Tabla 1: Tipo de zona (Neighborhood) vs tipo de construcción (BldgType)
table(Zona=HousePrediction$Neighborhood, Tipo=HousePrediction$BldgType)

# Tabla 2: Calidad general vs tipo de vivienda
table(Calidad=HousePrediction$OverallQual, Vivienda=HousePrediction$HouseStyle)

# ============================
# e) Gráficos base con par()
# ============================

# Configuración de 2x2 gráficos
par(mfrow=c(2,2), bg="gray95", col.main="blue")

# Boxplot: precio según tipo de vivienda
boxplot(HousePrediction$SalePrice ~ HousePrediction$HouseStyle,
        col="tomato", border="black",
        main="Precio por tipo de vivienda", xlab="Tipo", ylab="Precio")

# Diagrama de puntos: área habitable vs precio
plot(HousePrediction$GrLivArea, HousePrediction$SalePrice,
     col="darkgreen", pch=19,
     main="Área habitable vs Precio", xlab="Área", ylab="Precio")

# Histograma: distribución de precios
hist(HousePrediction$SalePrice, col="steelblue", border="white",
     main="Distribución del precio de venta", xlab="Precio", ylab="Frecuencia")

# Diagrama de puntos: año de construcción vs precio
plot(HousePrediction$YearBuilt, HousePrediction$SalePrice,
     col="purple", pch=17,
     main="Año construcción vs Precio", xlab="Año", ylab="Precio")

# ============================
# f) ggplot2
# ============================

# Gráfico de puntos
ggplot(HousePrediction, aes(x=GrLivArea, y=SalePrice)) +
  geom_point(color="darkblue") +
  labs(title="Área habitable vs Precio", x="Área (sq ft)", y="Precio de venta")

# Regresión lineal con bandas de confianza
ggplot(HousePrediction, aes(x=YearBuilt, y=SalePrice)) +
  geom_point(color="firebrick") +
  geom_smooth(method="lm", se=TRUE, color="black") +
  labs(title="Precio vs Año de construcción", x="Año", y="Precio")

# ============================
# g) plotly (interactivo)
# ============================

# Gráfico de puntos
plot_ly(data=HousePrediction, x=~GrLivArea, y=~SalePrice,
        type='scatter', mode='markers', color=~HouseStyle)

# Boxplot: precio vs tipo de vivienda
plot_ly(HousePrediction, y=~SalePrice, x=~HouseStyle,
        type="box", color=~HouseStyle)

# Boxplot: calidad vs precio
plot_ly(HousePrediction, y=~SalePrice, x=~OverallQual,
        type="box", color=~as.factor(OverallQual))

# Gráfico de barras: promedio de precios por estilo de casa
house_avg <- HousePrediction %>%
  group_by(HouseStyle) %>%
  summarise(PrecioPromedio = mean(SalePrice, na.rm=TRUE))

plot_ly(house_avg, x=~HouseStyle, y=~PrecioPromedio,
        type="bar", color=~HouseStyle)


## Quinto punto ------------

# ================================
# a) Importar archivo .csv y mostrar head()
# ================================
Enero <- read_csv("Desktop/JPSOSA/- Boveda/2. UNIVERSIDAD/$ Cuarto semestre/$ Programacion en lenguajes estadisticos/Talleres/R Taller/Data/Enero.csv")
View(Enero)
head(Enero)  # Pantallazo para entregar

# ============================
# b) Dimensión de los datos
# ============================
dim(Enero)

# ============================
# c) Summary de las variables
# ============================
summary(Enero)
str(Enero)

# ============================
# d) Tabla de variable cualitativa
# (Usaremos la variable DEPTOPROCED = Departamento de procedencia)
# ============================
table(Departamento_Procedencia = Enero$DEPTOPROCED)

# =================================================
# e) Gráficos base con par() para todas las variables cuantitativas
# =================================================

# Filtrar columnas numéricas
numericas <- Enero %>% select(where(is.numeric))

# Configurar layout
par(mfrow=c(2,2), bg="lightcyan", col.main="darkblue")

# Iterar sobre las variables numéricas
for (nombre in names(numericas)) {
  var <- numericas[[nombre]]
  
  # Boxplot
  boxplot(var, main=paste("Boxplot:", nombre),
          col="salmon", border="black", ylab=nombre)
  
  # Plot (índice vs valor)
  plot(var, main=paste("Puntos:", nombre),
       col="blue", pch=16, ylab=nombre, xlab="Índice")
  
  # Histograma
  hist(var, main=paste("Histograma:", nombre),
       col="orange", border="white", xlab=nombre)
}

# ============================
# f) ggplot2 (4 tipos de plot)
# Variables usadas: PBK4 (Peso bruto), FOBDOL4 (Valor en dólares FOB)
# ============================

# 1. geom_point simple
ggplot(Enero, aes(x=PBK4, y=FOBDOL4)) +
  geom_point(color="red") +
  labs(title="Plot 1: geom_point", x="Peso bruto (kg)", y="Valor FOB (USD)")

# 2. geom_point con stat_smooth() (default = loess)
ggplot(Enero, aes(x=PBK4, y=FOBDOL4)) +
  geom_point(color="blue") +
  stat_smooth() +
  labs(title="Plot 2: geom_point + stat_smooth()", x="Peso bruto", y="FOB USD")

# 3. geom_point con stat_smooth(se = FALSE)
ggplot(Enero, aes(x=PBK4, y=FOBDOL4)) +
  geom_point(color="darkgreen") +
  stat_smooth(se=FALSE) +
  labs(title="Plot 3: sin bandas", x="PBK4", y="FOBDOL4")

# 4. geom_point + modelo lineal con bandas
ggplot(Enero, aes(x=PBK4, y=FOBDOL4)) +
  geom_point(color="purple") +
  geom_smooth(method="lm", se=TRUE, color="black") +
  labs(title="Plot 4: lm + bandas", x="Peso bruto", y="Valor FOB")

# ============================
# g) plotly (4 tipos)
# Variables: PBK4 (peso bruto), FOBDOL4 (valor), DPTOR4 (departamento receptor)
# ============================

# 1. Gráfico de puntos simple
plot_ly(Enero, x=~PBK4, y=~FOBDOL4, type='scatter', mode='markers')

# 2. Puntos por color según variable categórica (DPTOR4)
plot_ly(Enero, x=~PBK4, y=~FOBDOL4,
        type='scatter', mode='markers', color=~as.factor(DPTOR4))

# 3. Gráfico tipo box agrupado por DPTOR4
plot_ly(Enero, y=~FOBDOL4, x=~as.factor(DPTOR4), type="box", color=~as.factor(DPTOR4))

# 4. Gráfico tipo bar: promedio de FOBDOL4 por departamento receptor
FOB_avg <- Enero %>%
  group_by(DPTOR4) %>%
  summarise(PromFOB = mean(FOBDOL4, na.rm=TRUE))

plot_ly(FOB_avg, x=~as.factor(DPTOR4), y=~PromFOB,
        type='bar', color=~as.factor(DPTOR4))

## Sexto punto ------------

# ================================
# a) Importar archivo .csv y mostrar head()
# ================================
Abril <- read_csv("Desktop/JPSOSA/- Boveda/2. UNIVERSIDAD/$ Cuarto semestre/$ Programacion en lenguajes estadisticos/Talleres/R Taller/Data/Abril.csv")
View(Abril)
head(Abril)  # Para captura de pantalla

# ============================
# b) Dimensión de los datos
# ============================
dim(Abril)

# ============================
# c) Summary de las variables
# ============================
summary(Abril)
str(Abril)

# ============================
# d) Tabla de variable cualitativa
# Usamos "DEPTOPROCED" (Departamento de procedencia)
# ============================
table(Departamento_Procedencia = Abril$DEPTOPROCED)

# =================================================
# e) Gráficos base: boxplot, scatter, histograma
# Para todas las variables cuantitativas
# =================================================

# Filtrar columnas numéricas
vars_numericas <- Abril %>% select(where(is.numeric))

# Configurar layout 2x2
par(mfrow=c(2,2), bg="lightgray", col.main="darkblue")

# Graficar cada variable numérica (boxplot, scatter, histograma)
for (nombre in names(vars_numericas)) {
  var <- vars_numericas[[nombre]]
  
  boxplot(var, main=paste("Boxplot:", nombre),
          col="lightcoral", border="black", ylab=nombre)
  
  plot(var, main=paste("Puntos:", nombre),
       col="steelblue", pch=16, ylab=nombre, xlab="Índice")
  
  hist(var, main=paste("Histograma:", nombre),
       col="lightgreen", border="black", xlab=nombre)
}

# ============================
# f) ggplot2: 4 tipos de gráficos
# Variables sugeridas: PBK4 (Peso bruto) y FOBDOL4 (Valor FOB USD)
# ============================

# 1. geom_point
ggplot(Abril, aes(x=PBK4, y=FOBDOL4)) +
  geom_point(color="darkred") +
  labs(title="Plot 1: geom_point", x="Peso Bruto", y="FOB USD")

# 2. geom_point + stat_smooth()
ggplot(Abril, aes(x=PBK4, y=FOBDOL4)) +
  geom_point(color="navy") +
  stat_smooth() +
  labs(title="Plot 2: Suavizado", x="Peso Bruto", y="FOB USD")

# 3. geom_point + stat_smooth(se=FALSE)
ggplot(Abril, aes(x=PBK4, y=FOBDOL4)) +
  geom_point(color="forestgreen") +
  stat_smooth(se=FALSE) +
  labs(title="Plot 3: Sin bandas", x="PBK4", y="FOBDOL4")

# 4. geom_point + lm + bandas de confianza
ggplot(Abril, aes(x=PBK4, y=FOBDOL4)) +
  geom_point(color="purple") +
  geom_smooth(method="lm", se=TRUE, color="black") +
  labs(title="Plot 4: lm + bandas", x="PBK4", y="FOBDOL4")

# ============================
# g) plotly: 4 gráficos por tipo
# Variables sugeridas: PBK4 (cuantitativa), DPTOR4 (categórica)
# ============================

# 1. Gráfico de puntos simple
plot_ly(Abril, x=~PBK4, y=~FOBDOL4,
        type='scatter', mode='markers')

# 2. Gráfico de puntos coloreado por DPTOR4
plot_ly(Abril, x=~PBK4, y=~FOBDOL4,
        type='scatter', mode='markers', color=~as.factor(DPTOR4))

# 3. Gráfico tipo box agrupado por DPTOR4
plot_ly(Abril, y=~FOBDOL4, x=~as.factor(DPTOR4),
        type="box", color=~as.factor(DPTOR4))

# 4. Gráfico tipo bar: promedio FOB por departamento receptor
promedios <- Abril %>%
  group_by(DPTOR4) %>%
  summarise(PromFOB = mean(FOBDOL4, na.rm=TRUE))

plot_ly(promedios, x=~as.factor(DPTOR4), y=~PromFOB,
        type='bar', color=~as.factor(DPTOR4))

# Septimo punto ------------

# ================================
# a) Importar archivo .csv y mostrar head()
# ================================
Noviembre <- read_csv("Desktop/JPSOSA/- Boveda/2. UNIVERSIDAD/$ Cuarto semestre/$ Programacion en lenguajes estadisticos/Talleres/R Taller/Data/Noviembre.csv")
View(Noviembre)
head(Noviembre)  # Para pantallazo

# ============================
# b) Dimensión de los datos
# ============================
dim(Noviembre)

# ============================
# c) Summary de las variables
# ============================
summary(Noviembre)
str(Noviembre)

# ============================
# d) Tabla de variable cualitativa
# Usamos "DEPTOPROCED" (Departamento de procedencia)
# ============================
table(Departamento_Procedencia = Noviembre$DEPTOPROCED)

# =================================================
# e) Gráficos base con par() para todas las variables cuantitativas
# =================================================

# Filtrar columnas numéricas
vars_numericas <- Noviembre %>% select(where(is.numeric))

# Configurar layout
par(mfrow=c(2,2), bg="ivory", col.main="darkred")

# Iterar por variable numérica
for (nombre in names(vars_numericas)) {
  var <- vars_numericas[[nombre]]
  
  boxplot(var, main=paste("Boxplot:", nombre),
          col="lightpink", border="black", ylab=nombre)
  
  plot(var, main=paste("Diagrama de puntos:", nombre),
       col="blue", pch=16, ylab=nombre, xlab="Índice")
  
  hist(var, main=paste("Histograma:", nombre),
       col="skyblue", border="black", xlab=nombre)
}

# ============================
# f) ggplot2 - Cuatro tipos de plots
# Variables sugeridas: PBK4 (Peso bruto), FOBDOL4 (Valor FOB USD)
# ============================

# 1. geom_point
ggplot(Noviembre, aes(x=PBK4, y=FOBDOL4)) +
  geom_point(color="tomato") +
  labs(title="Plot 1: geom_point", x="Peso Bruto", y="FOB USD")

# 2. geom_point + stat_smooth()
ggplot(Noviembre, aes(x=PBK4, y=FOBDOL4)) +
  geom_point(color="blue") +
  stat_smooth() +
  labs(title="Plot 2: suavizado", x="PBK4", y="FOBDOL4")

# 3. geom_point + stat_smooth(se=FALSE)
ggplot(Noviembre, aes(x=PBK4, y=FOBDOL4)) +
  geom_point(color="forestgreen") +
  stat_smooth(se=FALSE) +
  labs(title="Plot 3: sin bandas", x="PBK4", y="FOBDOL4")

# 4. geom_point + modelo lineal (lm)
ggplot(Noviembre, aes(x=PBK4, y=FOBDOL4)) +
  geom_point(color="purple") +
  geom_smooth(method="lm", se=TRUE) +
  labs(title="Plot 4: modelo lineal", x="Peso Bruto", y="Valor FOB")

# ============================
# g) plotly - 4 tipos de gráficos
# Variables sugeridas: PBK4 (cuantitativa), DPTOR4 (categórica)
# ============================

# 1. Gráfico de puntos simple
plot_ly(Noviembre, x=~PBK4, y=~FOBDOL4,
        type='scatter', mode='markers')

# 2. Gráfico de puntos por color según DPTOR4
plot_ly(Noviembre, x=~PBK4, y=~FOBDOL4,
        type='scatter', mode='markers', color=~as.factor(DPTOR4))

# 3. Gráfico tipo box agrupado por DPTOR4
plot_ly(Noviembre, y=~FOBDOL4, x=~as.factor(DPTOR4),
        type="box", color=~as.factor(DPTOR4))

# 4. Gráfico tipo bar con promedio de FOBDOL4 por DPTOR4
promedios <- Noviembre %>%
  group_by(DPTOR4) %>%
  summarise(PromFOB = mean(FOBDOL4, na.rm=TRUE))

plot_ly(promedios, x=~as.factor(DPTOR4), y=~PromFOB,
        type='bar', color=~as.factor(DPTOR4))

# Octavo punto -------------


# Noveno punto ------------

install.packages(c("sf", "ggplot2", "dplyr", "rgeoboundaries"))

# Librerías necesarias
library(sf)
library(rgeoboundaries)

# Mapa de Colombia con sus subdivisiones administrativas (departamentos)
colombia <- gb_adm1("Colombia")

# Colores aleatorios a cada departamento
set.seed(123)  # Para reproducibilidad
colombia$color <- sample(colors(), nrow(colombia), replace = TRUE)

# Mapa
ggplot(colombia) +
  geom_sf(aes(fill = color), color = "black") +
  labs(title = "Mapa de Colombia con departamentos coloreados") +
  theme_minimal() +
  theme(legend.position = "none")  # Oculta leyenda de colores aleatorios


# Decimo punto ------------


# Onceavo punto  ------------


## Punto 12 ------------
## Markdown ##


# Punto 13 ------------


# Punto 14 ------------










