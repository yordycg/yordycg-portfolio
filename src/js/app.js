const links = [...document.querySelectorAll('.header__link[href^="#"]')];

/**
 * Marca como activa la sección visible en la navegación.
 * `aria-current="location"` porque es la sección actual dentro de la misma página.
 */
function setActiveSection(id) {
  for (const link of links) {
    const isActive = link.hash === `#${id}`;
    link.classList.toggle('is-active', isActive);

    if (isActive) {
      link.setAttribute('aria-current', 'location');
    } else {
      link.removeAttribute('aria-current');
    }
  }
}

/**
 * Observa las secciones enlazadas desde el header y actualiza el estado activo.
 * La franja de detección es una banda horizontal en el centro del viewport.
 */
function initActiveSection() {
  const sections = links
    .map((link) => document.querySelector(link.hash))
    .filter(Boolean); // el CV es un enlace externo, no una sección

  if (!sections.length) return;

  const observer = new IntersectionObserver(
    (entries) => {
      for (const entry of entries) {
        if (entry.isIntersecting) setActiveSection(entry.target.id);
      }
    },
    { rootMargin: '-45% 0px -50% 0px' },
  );

  for (const section of sections) observer.observe(section);
}

initActiveSection();
