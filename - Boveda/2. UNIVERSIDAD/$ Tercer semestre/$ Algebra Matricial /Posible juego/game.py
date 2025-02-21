import pygame
import random
import numpy as np
from sklearn.linear_model import Ridge
from sklearn.preprocessing import PolynomialFeatures

# Inicializar Pygame
pygame.init()

# Configuración de la ventana
ANCHO_VENTANA = 700
ALTO_VENTANA = 650
ventana = pygame.display.set_mode((ANCHO_VENTANA, ALTO_VENTANA))
pygame.display.set_caption("Dr. Data: Predicción de Precios de Apartamentos")

# Colores
BLANCO = (255, 255, 255)
NEGRO = (0, 0, 0)
AZUL = (0, 0, 255)
ROJO = (255, 0, 0)
VERDE = (0, 255, 0)

# Configuración del mapa
TAMANO_CELDA = 50
TAMANO_OBJETO = 50  # Ajustar tamaño de apartamento y visitado
FILAS = ALTO_VENTANA // TAMANO_CELDA
COLUMNAS = ANCHO_VENTANA // TAMANO_CELDA

# Declaración de imágenes
IMAGEN_MAPA = 'Images/mapa2.jpg'
IMAGEN_PERSONAJE = 'Images/explorador1.png'
IMAGEN_APARTAMENTO = 'Images/apartamento.jpg'
IMAGEN_VISITADO = 'Images/visitado1.png'
IMAGEN_COMPUTADORA = 'Images/computadora.png'

# Cargar imágenes
mapa = pygame.image.load(IMAGEN_MAPA)
personaje = pygame.image.load(IMAGEN_PERSONAJE)
apartamento_imagen = pygame.image.load(IMAGEN_APARTAMENTO)
visitado_imagen = pygame.image.load(IMAGEN_VISITADO)
computadora_imagen = pygame.image.load(IMAGEN_COMPUTADORA)

# Escalar imágenes
mapa = pygame.transform.scale(mapa, (ANCHO_VENTANA, ALTO_VENTANA))
personaje = pygame.transform.scale(personaje, (TAMANO_OBJETO, TAMANO_OBJETO))
apartamento_imagen = pygame.transform.scale(apartamento_imagen, (TAMANO_OBJETO, TAMANO_OBJETO))
visitado_imagen = pygame.transform.scale(visitado_imagen, (TAMANO_OBJETO, TAMANO_OBJETO))
computadora_imagen = pygame.transform.scale(computadora_imagen, (600, 400))

# Variables del juego
posicion_personaje = [0, 0]
apartamentos = []
apartamentos_visitados = []
informacion_apartamentos = []
mostrar_libreta = False
mostrar_computadora = False
velocidad_personaje = 5  # Velocidad en píxeles

# Características y precios de los apartamentos
X = np.array([
    [120, 3, 2, 5, 2000, 8, 2],
    [150, 4, 3, 10, 1995, 7, 3],
    [80, 2, 1, 2, 2010, 9, 1],
    [200, 5, 4, 15, 1980, 6, 4],
    [130, 3, 2, 8, 2005, 8, 2],
    [170, 4, 3, 12, 1990, 7, 3],
    [90, 2, 1, 3, 2015, 9, 1],
    [210, 5, 4, 18, 1975, 6, 4],
    [140, 3, 2, 6, 2002, 8, 2],
    [160, 4, 3, 11, 1998, 7, 3],
    [85, 2, 1, 4, 2012, 9, 1],
    [220, 5, 4, 20, 1970, 6, 4],
    [110, 3, 2, 7, 2008, 8, 2],
    [180, 4, 3, 13, 1985, 7, 3],
    [95, 2, 1, 5, 2018, 9, 1],
    [230, 5, 4, 22, 1965, 6, 4],
    [125, 3, 2, 9, 2003, 8, 2],
    [155, 4, 3, 14, 1992, 7, 3],
    [100, 2, 1, 6, 2016, 9, 1],
    [240, 5, 4, 25, 1960, 6, 4]
])
y = np.array([
    300000, 450000, 200000, 600000, 320000, 470000, 210000, 620000, 310000, 460000,
    205000, 610000, 305000, 480000, 215000, 630000, 315000, 465000, 220000, 640000
])

# Ajustar modelo Ridge
poly = PolynomialFeatures(degree=2)
X_poly = poly.fit_transform(X)
ridge_model = Ridge(alpha=1000)
ridge_model.fit(X_poly, y)

# Generar apartamentos
def generar_apartamentos(num_apartamentos):
    for idx in range(num_apartamentos):
        x = random.randint(0, COLUMNAS - 1)
        y = random.randint(0, FILAS - 1)
        if [y, x] not in apartamentos and [y, x] != [posicion_personaje[0] // TAMANO_CELDA, posicion_personaje[1] // TAMANO_CELDA]:
            características = X[idx % len(X)]
            precio = ridge_model.predict(poly.transform([características]))[0]
            apartamentos.append([y, x, *características, precio])
            informacion_apartamentos.append(f"Apartamento {idx + 1}: {características[1]} hab, {características[0]:.2f} m², ${precio:.2f}")

# Generar apartamentos
generar_apartamentos(20)

# Funciones del juego
def dibujar_mapa():
    ventana.blit(mapa, (0, 0))

def dibujar_personaje():
    ventana.blit(personaje, (posicion_personaje[1], posicion_personaje[0]))

def dibujar_apartamentos():
    for apto in apartamentos:
        y, x, *_ = apto
        if [y, x] in [apto[:2] for apto in apartamentos_visitados]:
            ventana.blit(visitado_imagen, (x * TAMANO_CELDA, y * TAMANO_CELDA))
        else:
            ventana.blit(apartamento_imagen, (x * TAMANO_CELDA, y * TAMANO_CELDA))

def mostrar_texto(texto, tamanio, color, x, y):
    fuente = pygame.font.Font(None, tamanio)
    superficie_texto = fuente.render(texto, True, color)
    ventana.blit(superficie_texto, (x, y))

def mostrar_libreta_apartamentos():
    y_offset = 150
    for idx, apto in enumerate(apartamentos_visitados):
        y, x, tamaño, habitaciones, baños, distancia, año, calificación, criminalidad, precio = apto
        mostrar_texto(f"Apto {idx + 1}: {habitaciones} hab, {tamaño:.2f} m², ${precio:.2f}", 24, BLANCO, 10, y_offset)
        y_offset += 30

# Loop principal del juego
jugando = True
while jugando:
    for evento in pygame.event.get():
        if evento.type == pygame.QUIT:
            jugando = False
        elif evento.type == pygame.KEYDOWN:
            if evento.key == pygame.K_l:
                mostrar_libreta = not mostrar_libreta
            if evento.key == pygame.K_p:
                mostrar_computadora = not mostrar_computadora

    keys = pygame.key.get_pressed()
    if keys[pygame.K_UP] and posicion_personaje[0] > 0:
        posicion_personaje[0] -= velocidad_personaje
    if keys[pygame.K_DOWN] and posicion_personaje[0] < ALTO_VENTANA - TAMANO_OBJETO:
        posicion_personaje[0] += velocidad_personaje
    if keys[pygame.K_LEFT] and posicion_personaje[1] > 0:
        posicion_personaje[1] -= velocidad_personaje
    if keys[pygame.K_RIGHT] and posicion_personaje[1] < ANCHO_VENTANA - TAMANO_OBJETO:
        posicion_personaje[1] += velocidad_personaje

    current_cell = [posicion_personaje[0] // TAMANO_CELDA, posicion_personaje[1] // TAMANO_CELDA]
    if current_cell in [[apto[0], apto[1]] for apto in apartamentos] and current_cell not in [[visitado[0], visitado[1]] for visitado in apartamentos_visitados]:
        idx = next((i for i, apto in enumerate(apartamentos) if apto[:2] == current_cell), None)
        if idx is not None:
            apartamentos_visitados.append(apartamentos[idx])

    ventana.fill(NEGRO)
    dibujar_mapa()
    dibujar_personaje()
    dibujar_apartamentos()
    mostrar_texto("Dr. Data: Predicción de Precios de Apartamentos", 36, BLANCO, 10, 10)
    mostrar_texto(f"Apartamentos visitados: {len(apartamentos_visitados)}/{len(apartamentos)}", 24, BLANCO, 300, 10)

    if mostrar_libreta:
        mostrar_texto("Libreta de Apartamentos", 28, ROJO, 10, 120)
        mostrar_libreta_apartamentos()
    
    if mostrar_computadora:
        ventana.blit(computadora_imagen, ((ANCHO_VENTANA - computadora_imagen.get_width()) // 2, (ALTO_VENTANA - computadora_imagen.get_height()) // 2))

    pygame.display.flip()
    pygame.time.Clock().tick(30)

pygame.quit()

print("Apartamentos visitados:")
for idx, apto in enumerate(apartamentos_visitados):
    print(f"Apto {idx + 1}: {apto[3]} hab, {apto[2]:.2f} m², ${apto[-1]:.2f}")