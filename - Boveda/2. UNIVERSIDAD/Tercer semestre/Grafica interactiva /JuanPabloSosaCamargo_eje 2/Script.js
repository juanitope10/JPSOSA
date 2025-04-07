function toggleMenu() {
    const menu = document.getElementById("menu"); // Selección del menú por su ID
    menu.classList.toggle("visible"); // Alterna la clase "visible" para mostrar/ocultar el menú
}

function mostrarSeccion(seccionId) {
    // Ocultar todas las secciones
    const secciones = document.querySelectorAll('.section');
    secciones.forEach(function(seccion) {
        seccion.style.display = 'none'; // Oculta cada sección
    });
    
    // Mostrar la sección seleccionada
    const seccion = document.getElementById(seccionId);
    if (seccion) {
        seccion.style.display = 'block'; // Muestra la sección seleccionada
    }
}

document.addEventListener("DOMContentLoaded", function() {
    const themeToggle = document.getElementById("themeToggle");

    // Verificar si el usuario ya ha seleccionado un tema antes
    if (localStorage.getItem("dark-mode") === "enabled") {
        document.body.classList.add("dark-mode"); // Aplica el modo oscuro
        themeToggle.checked = true; // Marca el checkbox
    }

    themeToggle.addEventListener("change", function() {
        if (themeToggle.checked) {
            document.body.classList.add("dark-mode"); // Activa el modo oscuro
            localStorage.setItem("dark-mode", "enabled"); // Guarda la preferencia en localStorage
        } else {
            document.body.classList.remove("dark-mode"); // Desactiva el modo oscuro
            localStorage.setItem("dark-mode", "disabled"); // Guarda la preferencia en localStorage
        }
    });
});

function getRandomColor() {
    const letters = "0123456789ABCDEF";
    let color = "#";
    for (let i = 0; i < 6; i++) {
        color += letters[Math.floor(Math.random() * 16)]; // Genera un color aleatorio
    }
    return color; // Retorna el color generado
}

document.addEventListener("DOMContentLoaded", function() {
    const root = document.documentElement;
    const toggle = document.getElementById("textColorToggle");

    // Verifica si hay un valor guardado en localStorage
    const savedColor = localStorage.getItem("main-text");
    if (savedColor) {
        root.style.setProperty('--main-text', savedColor); // Aplica el color guardado
    }

    // Cambia el color cuando se activa/desactiva el checkbox
    toggle.addEventListener("change", function() {
        const newColor = getRandomColor();
        root.style.setProperty('--main-text', newColor); // Aplica el nuevo color
        localStorage.setItem("main-text", newColor); // Guarda el nuevo color en localStorage
    });
});

// Cambio de imagen de fondo
const button = document.getElementById('changeImageBtn');
button.addEventListener('click', function() {
    const root = document.documentElement;
    const originalImage = "url('Imagenes/cancha.jpg')";
    const newImage = "url('Imagenes/nueva_imagen4.jpg')";

    // Obtener la imagen actual
    const currentImage = getComputedStyle(root).getPropertyValue('--cancha-image').trim();

    // Alternar entre las imágenes
    if (currentImage === originalImage) {
        root.style.setProperty('--cancha-image', newImage); // Cambia a la nueva imagen
    } else {
        root.style.setProperty('--cancha-image', originalImage); // Cambia a la imagen original
    }
});

function mostrarInfo(infoId) {
    // Ocultar todos los cuadros de información
    const infos = document.querySelectorAll('.info');
    infos.forEach(info => info.style.display = 'none'); // Oculta cada cuadro de información
    
    // Mostrar el cuadro de información correspondiente al botón presionado
    document.getElementById(infoId).style.display = 'block'; // Muestra el cuadro de información seleccionado
}

document.getElementById("changeViewBtn").addEventListener("click", function() {
    document.getElementById("cancha").classList.add("hidden"); // Oculta la vista de la cancha
    document.getElementById("satelite").classList.remove("hidden"); // Muestra la vista satelital
});

document.getElementById("backToMapBtn").addEventListener("click", function() {
    document.getElementById("cancha").classList.remove("hidden"); // Muestra la vista de la cancha
    document.getElementById("satelite").classList.add("hidden"); // Oculta la vista satelital
});

function mostrarInfo(id) {
    document.querySelectorAll('.info').forEach(function(info) {
        info.style.display = 'none'; // Oculta todos los cuadros de información
    });
    document.getElementById(id).style.display = 'block'; // Muestra el cuadro de información seleccionado
}

document.getElementById("show-second-part").addEventListener("click", mostrarSegundaParte); // Asocia la función mostrarSegundaParte al botón
document.getElementById("show-first-part").addEventListener("click", mostrarPrimeraParte); // Asocia la función mostrarPrimeraParte al botón

function mostrarSegundaParte() {
    document.getElementById("first-part").classList.add("hidden"); // Oculta la primera parte
    document.getElementById("second-part").classList.remove("hidden"); // Muestra la segunda parte
}

function mostrarPrimeraParte() {
    document.getElementById("first-part").classList.remove("hidden"); // Muestra la primera parte
    document.getElementById("second-part").classList.add("hidden"); // Oculta la segunda parte
}