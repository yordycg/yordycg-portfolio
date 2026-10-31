# QA v2.0 — cierre de Fase 8

Fecha: 2026-10-31
Alcance: sitio v1.6 auditado, build local, CV, 404 y documentación; release v2.0.

## F8.1 — Lighthouse

| Entorno | Performance | Accessibility | Best practices | SEO |
|---|---:|---:|---:|---:|
| Local mobile | 99 | 100 | 100 | 100 |
| Local desktop | 100 | 100 | 100 | 100 |
| Live mobile | 98 | 100 | 100 | 100 |
| Live desktop | 100 | 100 | 100 | 100 |

La diferencia de performance móvil entre local y live es normal por latencia/CDN.
No hay regresiones de accesibilidad ni SEO.

## F8.2 — Responsive

Probados: 320×800, 360×800, 375×812, 414×896, 667×375, 768×900, 1024×900,
1440×900 y 1920×1080.

- Sin overflow horizontal.
- Header móvil completo a 320 px.
- Sidebar desde 1024 px.
- Grid de proyectos a una columna en móvil y dos desde tablet.
- Contacto apilado en móvil/tablet y en fila desde 1024.
- 404 a 320 px con botones de 44 px.
- Targets táctiles de 44 px.
- Sin overlay hover-only.

## F8.3 — Links

- `linkinator`: 28 enlaces internos, 0 roto.
- GitHub, repos de proyectos y LinkedIn: 200.
- `/`, `/404.html`, `/site.webmanifest`, `/robots.txt`, `/sitemap.xml`,
  `/assets/favicon/favicon.ico` y `/assets/yordy-carmona-cv.pdf`: 200.
- Una URL inexistente devuelve 404 con la página propia.
- JSON-LD, canonical, OG, sitemap y robots verificados.

## F8.4 — Contenido ES

Correcciones aplicadas:

- `docs/content.md` sincronizado con el copy provisional de Proyectos.
- Fechas de arquitectura unificadas a **dic 2016 – dic 2022**.
- Nota de año de egreso actualizada a `2024–2027` (CV/LinkedIn).
- Sin teléfono en el sitio.
- Sin “Demo”, sin inglés A2 y sin tecnologías no defendibles.
- Portfolio, CV y LinkedIn revisados contra `docs/profile-consistency.md`.

Pendiente conocido, fuera de F8:

- Las imágenes de proyectos siguen siendo placeholders “PREVIEW” hasta P1.4.
- El CV anterior queda en el historial/tag v1.5.

## F8.5 / F8.6 — Release

- [x] PR `feature/f8-qa` → `develop`.
- [x] Release PR `develop` → `main`.
- [x] Tag v2.0.
- [x] Deploy y verificación live.
- [x] Merge `main` → `develop`.
