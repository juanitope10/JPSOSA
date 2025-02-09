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