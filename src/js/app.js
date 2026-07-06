document.addEventListener('DOMContentLoaded', () => {
  console.log('Portfolio initialized with Vanilla JS!');
  
  // Inicializar interacción de scroll para el header (Opción B)
  initHeaderScroll();
});

/**
 * Controla la visibilidad del header al hacer scroll
 */
function initHeaderScroll() {
  const header = document.querySelector('.header');
  if (!header) return;

  const handleScroll = () => {
    // Si bajamos más de 120px, revelamos el header
    if (window.scrollY > 120) {
      header.classList.add('header--scrolled');
    } else {
      header.classList.remove('header--scrolled');
    }
  };

  window.addEventListener('scroll', handleScroll);
  // Ejecutar de inmediato por si el usuario recarga la página a mitad del sitio
  handleScroll();
}
