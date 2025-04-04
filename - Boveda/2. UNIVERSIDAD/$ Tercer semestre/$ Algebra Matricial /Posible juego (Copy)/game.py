import pygame
import random
import numpy as np
from sklearn.linear_model import Ridge
from sklearn.preprocessing import PolynomialFeatures

# Inicializar Pygame
pygame.init()

# Configuración de la ventana
ANCHO_VENTANA = 1300
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
FILAS = 40  # Número de filas en el mapa
COLUMNAS = 40  # Número de columnas en el mapa
ZOOM = 0.8  # Factor de zoom reducido

# Declaración de imágenes
IMAGEN_MAPA = 'Images/mapa4.jpg'
IMAGEN_PERSONAJE_QUIETO = 'Images/explorador1.png'
IMAGEN_PERSONAJE_ABAJO = 'Images/explorador_abajo.png'
IMAGEN_PERSONAJE_ARRIBA = 'Images/explorador_arriba.png'
IMAGEN_PERSONAJE_DERECHA = 'Images/explorador_derecha.png'
IMAGEN_PERSONAJE_IZQUIERDA = 'Images/explorador_izquierda.png'
IMAGEN_APARTAMENTO = 'Images/apartamento.jpg'
IMAGEN_VISITADO = 'Images/visitado1.png'
IMAGEN_COMPUTADORA = 'Images/computadora.png'
IMAGEN_LIBRETA = 'Images/libreta.png'
IMAGENES_NUMERO = [f'Images/{i}.png' for i in range(1, 11)]  # Imágenes para los números del 1 al 10
IMAGEN_Q = 'Images/11.png'
IMAGEN_W = 'Images/12.png'
IMAGEN_E = 'Images/13.png'

# Cargar imágenes
mapa = pygame.image.load(IMAGEN_MAPA)
personaje_quieto = pygame.image.load(IMAGEN_PERSONAJE_QUIETO)
personaje_abajo = pygame.image.load(IMAGEN_PERSONAJE_ABAJO)
personaje_arriba = pygame.image.load(IMAGEN_PERSONAJE_ARRIBA)
personaje_derecha = pygame.image.load(IMAGEN_PERSONAJE_DERECHA)
personaje_izquierda = pygame.image.load(IMAGEN_PERSONAJE_IZQUIERDA)
apartamento_imagen = pygame.image.load(IMAGEN_APARTAMENTO)
visitado_imagen = pygame.image.load(IMAGEN_VISITADO)
computadora_imagen = pygame.image.load(IMAGEN_COMPUTADORA)
libreta_imagen = pygame.image.load(IMAGEN_LIBRETA)
imagenes_numero = [pygame.image.load(imagen) for imagen in IMAGENES_NUMERO]
imagen_q = pygame.image.load(IMAGEN_Q)
imagen_w = pygame.image.load(IMAGEN_W)
imagen_e = pygame.image.load(IMAGEN_E)

# Escalar imágenes con suavizado
mapa = pygame.transform.smoothscale(mapa, (int(COLUMNAS * TAMANO_CELDA * ZOOM), int(FILAS * TAMANO_CELDA * ZOOM)))
personaje_quieto = pygame.transform.smoothscale(personaje_quieto, (TAMANO_OBJETO, TAMANO_OBJETO))
personaje_abajo = pygame.transform.smoothscale(personaje_abajo, (TAMANO_OBJETO, TAMANO_OBJETO))
personaje_arriba = pygame.transform.smoothscale(personaje_arriba, (TAMANO_OBJETO, TAMANO_OBJETO))
personaje_derecha = pygame.transform.smoothscale(personaje_derecha, (TAMANO_OBJETO, TAMANO_OBJETO))
personaje_izquierda = pygame.transform.smoothscale(personaje_izquierda, (TAMANO_OBJETO, TAMANO_OBJETO))
apartamento_imagen = pygame.transform.smoothscale(apartamento_imagen, (TAMANO_OBJETO, TAMANO_OBJETO))
visitado_imagen = pygame.transform.smoothscale(visitado_imagen, (TAMANO_OBJETO, TAMANO_OBJETO))
computadora_imagen = pygame.transform.smoothscale(computadora_imagen, (600, 400))
libreta_imagen = pygame.transform.smoothscale(libreta_imagen, (1400, 1300))
imagenes_numero = [pygame.transform.smoothscale(imagen, (600, 600)) for imagen in imagenes_numero]
imagen_q = pygame.transform.smoothscale(imagen_q, (600, 600))
imagen_w = pygame.transform.smoothscale(imagen_w, (600, 600))
imagen_e = pygame.transform.smoothscale(imagen_e, (600, 600))

# Variables del juego
posicion_personaje = [0, 0]
apartamentos = []
apartamentos_visitados = []
informacion_apartamentos = []
mostrar_libreta = False
mostrar_computadora = False
mostrar_imagen_numero = None  # Variable para mostrar una imagen basada en el número presionado
mostrar_imagen_q = False
mostrar_imagen_w = False
mostrar_imagen_e = False
velocidad_personaje = 8  # Velocidad en píxeles
camara_x = 0
camara_y = 0
direccion_personaje = personaje_quieto

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
    ventana.blit(mapa, (-camara_x, -camara_y))

def dibujar_personaje():
    ventana.blit(direccion_personaje, (posicion_personaje[1] - camara_x, posicion_personaje[0] - camara_y))

def dibujar_apartamentos():
    for apto in apartamentos:
        y, x, *_ = apto
        if [y, x] in [apto[:2] for apto in apartamentos_visitados]:
            ventana.blit(visitado_imagen, (x * TAMANO_CELDA * ZOOM - camara_x, y * TAMANO_CELDA * ZOOM - camara_y))
        else:
            ventana.blit(apartamento_imagen, (x * TAMANO_CELDA * ZOOM - camara_x, y * TAMANO_CELDA * ZOOM - camara_y))

def mostrar_texto(texto, tamanio, color, x, y):
    fuente = pygame.font.Font(None, tamanio)
    superficie_texto = fuente.render(texto, True, color)
    ventana.blit(superficie_texto, (x, y))

def mostrar_libreta_apartamentos():
    line_height = 30
    total_lines = len(apartamentos_visitados)
    y_offset = (ALTO_VENTANA - (total_lines * line_height)) // 2 + 50  # Centrar verticalmente y ajustar para dejar espacio para el título
    for idx, apto in enumerate(apartamentos_visitados):
        y, x, tamaño, habitaciones, baños, distancia, año, calificación, criminalidad, precio = apto
        mostrar_texto(f"Apto {idx + 1}: {habitaciones} hab, {tamaño:.2f} m², ${precio:.2f}", 24, NEGRO, (ANCHO_VENTANA - 750) // 2, y_offset)
        y_offset += line_height

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
            if pygame.K_1 <= evento.key <= pygame.K_9:
                numero = evento.key - pygame.K_1
                mostrar_imagen_numero = numero if numero < len(imagenes_numero) else None
            if evento.key == pygame.K_0:
                mostrar_imagen_numero = 9
            if evento.key == pygame.K_q:
                mostrar_imagen_q = not mostrar_imagen_q
            if evento.key == pygame.K_w:
                mostrar_imagen_w = not mostrar_imagen_w
            if evento.key == pygame.K_e:
                mostrar_imagen_e = not mostrar_imagen_e

    keys = pygame.key.get_pressed()
    if keys[pygame.K_UP] and posicion_personaje[0] > 0:
        posicion_personaje[0] -= velocidad_personaje
        direccion_personaje = personaje_arriba
    elif keys[pygame.K_DOWN] and posicion_personaje[0] < FILAS * TAMANO_CELDA - TAMANO_OBJETO:
        posicion_personaje[0] += velocidad_personaje
        direccion_personaje = personaje_abajo
    elif keys[pygame.K_LEFT] and posicion_personaje[1] > 0:
        posicion_personaje[1] -= velocidad_personaje
        direccion_personaje = personaje_izquierda
    elif keys[pygame.K_RIGHT] and posicion_personaje[1] < COLUMNAS * TAMANO_CELDA - TAMANO_OBJETO:
        posicion_personaje[1] += velocidad_personaje
        direccion_personaje = personaje_derecha
    else:
        direccion_personaje = personaje_quieto

    # Ajustar la cámara para que siga al personaje
    camara_x = max(0, min(posicion_personaje[1] - ANCHO_VENTANA // 2, int(COLUMNAS * TAMANO_CELDA * ZOOM) - ANCHO_VENTANA))
    camara_y = max(0, min(posicion_personaje[0] - ALTO_VENTANA // 2, int(FILAS * TAMANO_CELDA * ZOOM) - ALTO_VENTANA))

    current_cell = [int(posicion_personaje[0] // (TAMANO_CELDA * ZOOM)), int(posicion_personaje[1] // (TAMANO_CELDA * ZOOM))]
    if current_cell in [[apto[0], apto[1]] for apto in apartamentos] and current_cell not in [[visitado[0], visitado[1]] for visitado in apartamentos_visitados]:
        idx = next((i for i, apto in enumerate(apartamentos) if apto[:2] == current_cell), None)
        if idx is not None:
            apartamentos_visitados.append(apartamentos[idx])

    ventana.fill(NEGRO)
    dibujar_mapa()
    dibujar_personaje()
    dibujar_apartamentos()
    mostrar_texto("Dr. Data: Predicción de Precios de Apartamentos                              Regresion Ridge", 36, BLANCO, 10, 10)

    if mostrar_libreta:
        ventana.blit(libreta_imagen, ((ANCHO_VENTANA - libreta_imagen.get_width()) // 2, (ALTO_VENTANA - libreta_imagen.get_height()) // 2))
        mostrar_texto("Libreta de Apartamentos", 25, ROJO, 150, (ALTO_VENTANA - 30 * len(apartamentos_visitados)) // 2 - 200)
        mostrar_libreta_apartamentos()
    
    if mostrar_computadora:
        ventana.blit(computadora_imagen, ((ANCHO_VENTANA - computadora_imagen.get_width()) // 2, (ALTO_VENTANA - computadora_imagen.get_height()) // 2))
    
    if mostrar_imagen_numero is not None:
        ventana.blit(imagenes_numero[mostrar_imagen_numero], ((ANCHO_VENTANA - imagenes_numero[mostrar_imagen_numero].get_width()) // 2, (ALTO_VENTANA - imagenes_numero[mostrar_imagen_numero].get_height()) // 2))

    if mostrar_imagen_q:
        ventana.blit(imagen_q, ((ANCHO_VENTANA - imagen_q.get_width()) // 2, (ALTO_VENTANA - imagen_q.get_height()) // 2))
    
    if mostrar_imagen_w:
        ventana.blit(imagen_w, ((ANCHO_VENTANA - imagen_w.get_width()) // 2, (ALTO_VENTANA - imagen_w.get_height()) // 2))
    
    if mostrar_imagen_e:
        ventana.blit(imagen_e, ((ANCHO_VENTANA - imagen_e.get_width()) // 2, (ALTO_VENTANA - imagen_e.get_height()) // 2))

    pygame.display.flip()
    pygame.time.Clock().tick(30)

pygame.quit()

print("Apartamentos visitados:")
for idx, apto in enumerate(apartamentos_visitados):
    print(f"Apto {idx + 1}: {apto[3]} hab, {apto[2]:.2f} m², ${apto[-1]:.2f}")