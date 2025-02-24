// Función para mostrar información en un modal emergente con una imagen
function mostrarInformacion(mensaje, imagenSrc) {
    console.log("Cargando imagen desde:", imagenSrc); // Mensaje de depuración en la consola

    // Crear el fondo oscuro (overlay)
    let overlay = document.createElement('div');
    overlay.id = 'overlay';
    overlay.style.position = 'fixed';
    overlay.style.top = '0';
    overlay.style.left = '0';
    overlay.style.width = '100vw';
    overlay.style.height = '100vh';
    overlay.style.backgroundColor = 'rgba(0, 0, 0, 0.5)'; // Fondo semitransparente
    overlay.style.zIndex = '99';
    
    // Cerrar el modal al hacer clic en el fondo oscuro
    overlay.onclick = function () {
        cerrarModal(modal, overlay);
    };
    document.body.appendChild(overlay);

    // Crear el modal (cuadro emergente)
    let modal = document.createElement('div');
    modal.id = 'modal';
    modal.style.position = 'fixed';
    modal.style.top = '50%';
    modal.style.left = '50%';
    modal.style.transform = 'translate(-50%, -50%)';
    modal.style.backgroundColor = '#fff';
    modal.style.padding = '20px';
    modal.style.borderRadius = '10px';
    modal.style.boxShadow = '0px 4px 6px rgba(0, 0, 0, 0.3)';
    modal.style.zIndex = '100';
    modal.style.maxWidth = '400px'; // Máximo ancho
    modal.style.textAlign = 'center';
    modal.style.width = '90vw'; // Se adapta a pantallas pequeñas
    modal.style.maxHeight = '90vh'; // Evita que el modal sea demasiado alto
    modal.style.overflowY = 'auto'; // Permite desplazamiento si es necesario

    // Hacer que el modal ocupe toda la pantalla en dispositivos pequeños
    if (window.innerWidth < 800) {
        modal.style.width = '100vw';
        modal.style.height = '100vh';
        modal.style.top = '0';
        modal.style.left = '0';
        modal.style.transform = 'none';
        modal.style.display = 'flex';
        modal.style.flexDirection = 'column';
        modal.style.justifyContent = 'center';
        modal.style.alignItems = 'center';
        modal.style.padding = '20px';
    }

    // Crear el texto dentro del modal
    let texto = document.createElement('p');
    texto.innerText = mensaje;
    texto.style.color = '#333'; // Color del texto
    modal.appendChild(texto);

    // Crear la imagen dentro del modal
    let imagen = document.createElement('img');
    imagen.src = imagenSrc;
    imagen.style.width = '100%'; // Se ajusta al ancho del modal
    imagen.style.borderRadius = '8px';
    imagen.style.marginTop = '10px';
    imagen.style.display = 'block';
    
    // Si la imagen no se carga, ocultarla
    imagen.onerror = function () {
        console.error("Error cargando la imagen:", imagenSrc);
        this.style.display = "none";
    };
    modal.appendChild(imagen);

    // Crear el botón de cierre del modal
    let botonCerrar = document.createElement('button');
    botonCerrar.innerText = 'Cerrar';
    botonCerrar.style.marginTop = '10px';
    botonCerrar.style.padding = '8px 15px';
    botonCerrar.style.border = 'none';
    botonCerrar.style.backgroundColor = '#d9534f';
    botonCerrar.style.color = 'white';
    botonCerrar.style.cursor = 'pointer';
    botonCerrar.style.borderRadius = '5px';

    // Cerrar el modal al hacer clic en el botón
    botonCerrar.onclick = function () {
        cerrarModal(modal, overlay);
    };
    modal.appendChild(botonCerrar);

    // Agregar el modal al documento
    document.body.appendChild(modal);
}

// Función para cerrar el modal y eliminar el fondo oscuro
function cerrarModal(modal, overlay) {
    document.body.removeChild(modal);
    document.body.removeChild(overlay);
}
