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
- [x] **Favicon:**
    - [x] Set completo en `src/assets/favicon/` (`.svg` manual "YC", `.ico`, PNG 16/32, `apple-touch-icon`, `android-chrome-192/512`, `site.webmanifest`).
    - [x] `site.webmanifest` con `name` "YordyCG" y colores `#131313` (tema oscuro).
- [x] **Media de Proyectos:**
    - [x] Placeholders `.webp` 16:9 generados (`project-2.webp`, `project-3.webp`) vía `scripts/placeholder.sh`.
    - [x] **Placeholders mejorados:** rediseño tipo mock de app/browser (estética "Mono Dark", sin etiqueta provisoria).
    - [ ] **Provision:** reemplazar placeholders por capturas reales (demo/GIF/imagen) cuando se tenga dominio propio.
- [x] **og:image:** generada 1200×630 (`assets/img/og-image.png`) con la estética "Mono Dark".

## 3. Implementación
- [x] **Contenido Real:** inyectado en `src/index.html` (about, proyectos, contacto, footer, JSON-LD).
- [x] **Estilos (CSS):** sistema "Mono Dark", layout responsive de tarjetas, header scroll-triggered y hover en tarjetas.
- [ ] **Pendiente de decidir:** efecto "Desenfoque Pegajoso" (Sticky Blur) real del header (hoy es fondo sólido, sin `backdrop-filter`).

## 4. Optimización Final (Pendiente)
- [x] Hero removido: imagen `blueprint_hero_bg.webp` eliminada, reemplazada por gradiente radial CSS (sin imagen). Scripts `scripts/hero.sh` / `scripts/hero.svg` retirados.
- [x] **SEO técnico (GitHub Pages):**
    - [x] `robots.txt` y `sitemap.xml` con la URL `https://yordycg.github.io/yordycg-portfolio/`.
    - [x] JSON-LD `url` corregido; `<link rel="canonical">` añadido.
    - [x] Open Graph + Twitter cards (`og:title`, `og:description`, `og:type`, `og:url`, `og:image`).
- [x] **Auditoría Lighthouse:** mobile perf 99 · acc 100 · best-practices 100 · SEO 100; desktop 100/100/100/100.
- [x] **Pruebas de diseño responsivo (Mobile First):** sin overflow en 320/375/390/768/1440.
    - [x] Fix: About desbordaba 460px en móvil (grid 12 cols -> `display:block` en `@media (max-width: 64em)`).
    - [x] Fix: tarjetas de proyectos desbordaban 20px a 320px (`minmax(32rem)` -> `grid-template-columns: 1fr` en `@media (max-width: 36em)`).
    - [x] Fix: URL de Google Fonts con saltos de línea/espacios codificados (`wght@400;500;600;700`).

## 5. Publicación
- [ ] **CI/CD:** workflow GitHub Actions (lint Biome) y deploy a GitHub Pages al pushear a `main`.
- [ ] Integrar `develop` → `main` cuando el sitio esté completo (Git Flow Lite: `main` es solo releases estables).

## 6. Futuro / Deuda
- [ ] Dominio propio: actualizar JSON-LD, canonical, `og:url`, `robots.txt` y `sitemap.xml`.
- [ ] Capturas reales o demos de los proyectos.