document.addEventListener("DOMContentLoaded", () => {
  const points = document.querySelectorAll(".map-point");
  const infoBox = document.getElementById("info-box");
  const container = document.querySelector(".map-container");
  const imageOverlay = document.getElementById("image-overlay");
  const overlayImage = document.querySelector(".overlay-image");
  const closeOverlay = document.querySelector(".close-overlay");

  // Aseguramos que el overlay esté oculto y sin imagen apenas carga la página
  imageOverlay.style.display = "none";
  overlayImage.src = "";

  // Detecta si el dispositivo es táctil
  const isTouchDevice = "ontouchstart" in window || navigator.maxTouchPoints > 0;

  points.forEach(point => {
    // mostrar la información (hover en escritorio, touch en telefonos móviles)
    if (isTouchDevice) {
      point.addEventListener("touchstart", (event) => {
        event.preventDefault(); // Evita zoom involuntario
        mostrarInfo(event.target);
      });
    } else {
      point.addEventListener("mouseenter", (event) => {
        mostrarInfo(event.target);
      });
      point.addEventListener("mouseleave", () => {
        infoBox.style.display = "none";
      });
    }

    // Evento click para mostrar el overlay con la imagen
    point.addEventListener("click", () => {
      const imageUrl = point.getAttribute("data-img");
      if (imageUrl) {
        overlayImage.src = imageUrl;
        imageOverlay.style.display = "flex";
      }
    });
  });

  // Oculta la info si se toca fuera de un punto en dispositivos táctiles
  document.addEventListener("touchstart", (event) => {
    if (!event.target.classList.contains("map-point")) {
      infoBox.style.display = "none";
    }
  });

  // Función para mostrar la caja de información
  function mostrarInfo(elemento) {
    const name = elemento.getAttribute("data-name");
    const info = elemento.getAttribute("data-info");
    infoBox.innerHTML = `<strong>${name}</strong><br>${info}`;
    infoBox.style.display = "block";

    // Calcula la posición relativa de la info-box al contenedor
    const rect = elemento.getBoundingClientRect();
    const containerRect = container.getBoundingClientRect();
    const posX = rect.left - containerRect.left + rect.width / 2;
    const posY = rect.top - containerRect.top + rect.height + 10;
    infoBox.style.left = `${posX}px`;
    infoBox.style.top = `${posY}px`;
  }

  // cerrar el overlay al hacer click en la "x"
  closeOverlay.addEventListener("click", () => {
    imageOverlay.style.display = "none";
    overlayImage.src = "";
  });

  // opcional: cerrar overlay al hacer click fuera de la imagen
  imageOverlay.addEventListener("click", (event) => {
    if (event.target === imageOverlay) {
      imageOverlay.style.display = "none";
      overlayImage.src = "";
    }
  });
});
