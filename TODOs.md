# Hoja de Ruta y Tareas del Portfolio

Este archivo realiza un seguimiento del progreso y las definiciones pendientes para el portfolio de YordyCG.

## 1. Definición de Contenido
- [x] **Grilla de Proyectos:** definida con **2 proyectos** (decisión tomada, no se amplía a 6):
    - [x] Sistema Veterinario (C#, EF Core, SQL Server, Docker, Bootstrap 5).
    - [x] Sistema de Arriendo de Canchas (Python, Django, MySQL, Docker, Bootstrap 5).
- [x] **"Sobre Mí" (About Me):** contenido inyectado y alineado con la filosofía "Vanilla Web" (estudiante buscando primer empleo junior).
- [x] **Sección de Contacto:**
    - [x] URLs verificadas (GitHub, LinkedIn, X) — todas responden 200.
    - [x] Email confirmado: `yordycarmona.dev@gmail.com`.

## 2. Activos Técnicos (Assets)
- [x] **Currículum (CV):**
    - [x] Archivo `assets/yordy-carmona-cv.pdf` listo, enlazado en header y about.
- [x] **Media de Proyectos:**
    - [x] Placeholders `.webp` 16:9 generados (`project-2.webp`, `project-3.webp`) vía `scripts/placeholder.sh`.
    - [ ] **Provisorio:** reemplazar placeholders por capturas reales (demo/GIF/imagen) cuando se tenga dominio propio.

## 3. Implementación
- [x] **Contenido Real:** inyectado en `src/index.html` (about, proyectos, contacto, footer, JSON-LD).
- [x] **Estilos (CSS):** sistema "Mono Dark", layout responsive de tarjetas, header scroll-triggered y hover en tarjetas.
- [ ] **Pendiente de decidir:** efecto "Desenfoque Pegajoso" (Sticky Blur) real del header (hoy es fondo sólido, sin `backdrop-filter`).

## 4. Optimización Final (Pendiente)
- [x] Hero removido: imagen `blueprint_hero_bg.webp` eliminada, reemplazada por gradiente radial CSS (sin imagen). Scripts `scripts/hero.sh` / `scripts/hero.svg` retirados.
- [ ] Auditoría Lighthouse (rendimiento, accesibilidad, SEO).
- [ ] Pruebas finales de diseño responsivo (Mobile First).
- [ ] Añadir favicon.

## 5. Futuro / Deuda
- [ ] Dominio propio: revisar JSON-LD (`url` apunta temporalmente a `https://github.com/yordycg`).
- [ ] Capturas reales o demos de los proyectos.
- [ ] Integrar `develop` → `main` cuando el sitio esté completo (Git Flow Lite: `main` es solo releases estables).
