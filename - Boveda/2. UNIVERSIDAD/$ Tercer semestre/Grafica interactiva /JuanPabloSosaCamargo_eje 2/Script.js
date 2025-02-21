function toggleMenu() {
    const menu = document.getElementById("menu"); // Selección del menú por su ID
    menu.classList.toggle("visible"); // Alterna la clase "visible" para mostrar/ocultar el menú
}
function mostrarSeccion(seccionId) {
    // Ocultar todas las secciones
    const secciones = document.querySelectorAll('.section');
    secciones.forEach(function(seccion) {
        seccion.style.display = 'none';
    });
    
    // Mostrar la sección seleccionada
    const seccion = document.getElementById(seccionId);
    if (seccion) {
        seccion.style.display = 'block';
    }
}
document.addEventListener("DOMContentLoaded", function() {
    const themeToggle = document.getElementById("themeToggle");

    // Verificar si el usuario ya ha seleccionado un tema antes
    if (localStorage.getItem("dark-mode") === "enabled") {
        document.body.classList.add("dark-mode");
        themeToggle.checked = true;
    }

    themeToggle.addEventListener("change", function() {
        if (themeToggle.checked) {
            document.body.classList.add("dark-mode");
            localStorage.setItem("dark-mode", "enabled");
        } else {
            document.body.classList.remove("dark-mode");
            localStorage.setItem("dark-mode", "disabled");
        }
    });
});

function getRandomColor() {
    const letters = "0123456789ABCDEF";
    let color = "#";
    for (let i = 0; i < 6; i++) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
}

document.addEventListener("DOMContentLoaded", function() {
    const root = document.documentElement;
    const toggle = document.getElementById("textColorToggle");

    // Verifica si hay un valor guardado en localStorage
    const savedColor = localStorage.getItem("main-text");
    if (savedColor) {
        root.style.setProperty('--main-text', savedColor);
    }

    // Cambia el color cuando se activa/desactiva el checkbox
    toggle.addEventListener("change", function() {
        const newColor = getRandomColor();
        root.style.setProperty('--main-text', newColor);
        localStorage.setItem("main-text", newColor);
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
        root.style.setProperty('--cancha-image', newImage);
    } else {
        root.style.setProperty('--cancha-image', originalImage);
    }
});

function mostrarInfo(infoId) {
    // Ocultar todos los cuadros de información
    const infos = document.querySelectorAll('.info');
    infos.forEach(info => info.style.display = 'none');
    
    // Mostrar el cuadro de información correspondiente al botón presionado
    document.getElementById(infoId).style.display = 'block';
}

document.getElementById("changeViewBtn").addEventListener("click", function() {
    document.getElementById("cancha").classList.add("hidden");
    document.getElementById("satelite").classList.remove("hidden");
});

document.getElementById("backToMapBtn").addEventListener("click", function() {
    document.getElementById("cancha").classList.remove("hidden");
    document.getElementById("satelite").classList.add("hidden");
});

function mostrarInfo(id) {
    document.querySelectorAll('.info').forEach(function(info) {
        info.style.display = 'none';
    });
    document.getElementById(id).style.display = 'block';
}