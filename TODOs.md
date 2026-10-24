# Roadmap — yordycg-portfolio

> Fuente de verdad del trabajo. Una fase activa a la vez.
> Última actualización: 2026-10-24

## Estado actual

- Fase activa: Fase 1 — Contenido e IA
- Próxima acción: F1.2 — reescribir title, description y OG
- Release actual: v1.0 en GitHub Pages
- Base definida: decisiones D7–D13 (idioma, trayectoria, disponibilidad, certificado, flujo de ramas)

## Convenciones

- `[ ]` pendiente
- `[x]` completado
- Cada fase indica estado, objetivo, dependencias, subtareas y criterio de salida.
- IDs de tarea: F1.1, F1.2, P1.1...
- No se abre una fase nueva hasta cerrar la anterior. Excepción: Fase 2, postergada a 2027 y desacoplada.
- Una rama por fase: `feature/f1-contenido`, `feature/f2-bilingue`, etc. Se integra a `develop` vía PR.
- `develop` se integra a `main` solo en release.

## Decisiones cerradas

- **D1:** Vanilla Web, sin frameworks.
- **D2:** Go no se muestra públicamente hasta tener un proyecto real.
- **D3:** Bilingüe con páginas estáticas ES/EN, no traducción por JS. (Postergado: ver D7 y Fase 2.)
- **D4:** Dominio propio más adelante.
- **D5:** No habrá demos hasta tener evidencia real.
- **D6:** Dark-only por diseño.
- **D7:** El inglés no se publica hasta poder sostener una entrevista técnica en inglés. Sin sección Idiomas.
- **D8:** La experiencia 2017–2022 no es sección propia: va como bloque "Trayectoria" dentro de About.
- **D9:** Disponibilidad = práctica profesional / part-time remoto. La logística vive en Contacto, no en el hero.
- **D10:** Ambos proyectos son académicos. Sin métricas de uso: se usa alcance técnico verificable.
- **D11:** El certificado del bootcamp no se publica en el sitio (contiene RUT). Vive en `docs/credentials/`, fuera de `src/`. Si se muestra, solo versión redactada.
- **D12:** El bootcamp se presenta como formación (472 h, programa estatal), nunca como nivel autodeclarado de JavaScript.
- **D13:** Los proyectos se evalúan al final, uno por uno, después de cerrar la base (portfolio + CV + LinkedIn). Ver sección "Proyectos — evaluación final".

## Fase 1 — Contenido e IA

**Estado:** En curso
**Objetivo:** que el sitio explique rol, stack y disponibilidad en 10 segundos.
**Depende de:** nada.
**Criterio de salida:** contenido ES aprobado, sin links falsos y sin Go público.

- [x] F1.1 Confirmar inglés, fechas, disponibilidad, métricas y teléfono.
    - Inglés: A2 autodidacta, sin certificado → no se publica (D7).
    - Fechas: Ariancif dic 2017 – dic 2022 · bootcamp mar–ago 2023 · Ing. Informática mar 2024 – nov 2027.
    - Disponibilidad: part-time fines de semana, remoto, desde ya (D9).
    - Teléfono: no se publica. Métricas: se recogen en "Proyectos — evaluación final" (P1).
- [ ] F1.2 Reescribir title, description y OG.
- [ ] F1.3 Reestructurar header y navegación.
- [ ] F1.4 Crear hero con rol, propuesta y CTAs.
- [ ] F1.5 Reescribir "Sobre mí" uniendo formación, trayectoria y práctica.
- [ ] F1.6 Añadir bloque "Trayectoria" compacto en About (Ariancif 2017–2022 → bootcamp 2023 → Ing. 2024–2027).
- [ ] F1.9 Añadir Stack y Educación (Ing. Informática + bootcamp Full-Stack JS). Sin sección Idiomas.
- [ ] F1.10 Reescribir Contacto y Footer.
- [ ] F1.11 Actualizar `docs/content.md` como fuente de contenido.
- [ ] F1.12 QA de contenido y aprobación.
- [x] F1.13 Certificado del bootcamp recuperado y verificado: Awakelab/Adalid · "Desarrollo de Aplicaciones Full Stack JavaScript Trainee" · Talento Digital para Chile · mar–ago 2023 · 472 h.

## Fase 2 — Bilingüe ES/EN

**Estado:** Postergada (objetivo 2027)
**Objetivo:** ofrecer el portfolio completo en español e inglés sin duplicar deuda.
**Depende de:** Fase 1. No bloquea Fases 3–6.
**Criterio de salida:** ambas páginas completas, con hreflang, canonical y sitemap. La versión EN se publica cuando el autor pueda sostener una entrevista técnica en inglés; no antes, no por certificado.

- [ ] F2.1 Definir estructura `src/index.html` + `src/en/index.html`.
- [ ] F2.2 Traducir todo el contenido.
- [ ] F2.3 Añadir selector de idioma.
- [ ] F2.4 Configurar hreflang, x-default y canonical por idioma.
- [ ] F2.5 Actualizar sitemap con ambas URLs.
- [ ] F2.6 QA de paridad ES/EN.

## Fase 3 — Accesibilidad y UX

**Estado:** Pendiente
**Objetivo:** que el sitio sea usable con teclado, lector de pantalla y móvil.
**Depende de:** Fase 1.
**Criterio de salida:** navegación completa por teclado y sin contenido oculto inaccesible.

- [ ] F3.1 Header visible desde el inicio.
- [ ] F3.2 Skip link y landmarks.
- [ ] F3.3 Navegación por teclado y foco visible.
- [ ] F3.4 Proyectos accesibles sin hover.
- [ ] F3.5 Tooltip del CV accesible o eliminado.
- [ ] F3.6 Labels con nombre de proyecto y aviso de nueva pestaña.
- [ ] F3.7 QA con teclado, axe y lector de pantalla básico.

## Fase 4 — CSS y JS

**Estado:** Pendiente
**Objetivo:** limpiar el sistema visual y eliminar deuda técnica del front-end.
**Depende de:** Fase 3.
**Criterio de salida:** sin anti-patrones, sin JS innecesario y responsive verificado.

- [ ] F4.1 Quitar `transition: all`.
- [ ] F4.2 Renombrar `--font-mono` o usar una monoespaciada real.
- [ ] F4.3 Reservar `100svh` solo para el hero.
- [ ] F4.4 Subir tags de 11px a 12px mínimo.
- [ ] F4.5 Quitar `console.log` y JS innecesario.
- [ ] F4.6 Sincronizar `docs/mockup/DESIGN.md` con los tokens reales.
- [ ] F4.7 QA visual 320/375/768/1440.

## Fase 5 — SEO técnico

**Estado:** Pendiente
**Objetivo:** dejar el SEO listo para compartir y para una futura migración de dominio.
**Depende de:** Fase 1.
**Criterio de salida:** metadatos absolutos, JSON-LD válido y sitemap completo.

- [ ] F5.1 OG y Twitter image absolutos.
- [ ] F5.2 JSON-LD completo y correcto.
- [ ] F5.3 `og:image:width/height/alt`, `twitter:image:alt`, `theme-color`.
- [ ] F5.4 Completar `site.webmanifest`.
- [ ] F5.5 Link a `favicon.ico`.
- [ ] F5.6 Página `404.html`.
- [ ] F5.7 Preparar migración a dominio propio.

## Fase 6 — Tooling y CI

**Estado:** Pendiente
**Objetivo:** hacer el proyecto reproducible y evitar regresiones.
**Depende de:** Fase 4.
**Criterio de salida:** CI verde con lint, formato, HTML, links y Lighthouse.

- [ ] F6.1 Crear `package.json` + lockfile.
- [ ] F6.2 Scripts reproducibles.
- [ ] F6.3 Validación HTML.
- [ ] F6.4 Link checker.
- [ ] F6.5 Lighthouse CI.
- [ ] F6.6 Test de accesibilidad con axe.
- [ ] F6.7 Dependabot.
- [ ] F6.8 Nginx pinneado, non-root y headers de seguridad.

## Fase 7 — README, CV y LinkedIn

**Estado:** Pendiente
**Objetivo:** alinear el paquete completo: repositorio, sitio, CV y LinkedIn.
**Depende de:** Fase 1.
**Criterio de salida:** README, CV y LinkedIn consistentes con el sitio y orientados al rol.

- [ ] F7.1 README con URL, screenshot, estructura y scripts.
- [ ] F7.2 CV con link al portfolio.
- [x] F7.3 Aclarar los 6 años en proyectos arquitectónicos (lo resuelve el bloque Trayectoria de F1.6).
- [ ] F7.4 Añadir Django, React Native y Bootstrap al CV.
- [ ] F7.6 Revisar privacidad del teléfono y del RUT en CV y certificado.
- [ ] F7.7 Actualizar LinkedIn: headline, Acerca de, certificación y experiencia, alineados con el sitio.

## Fase 8 — QA y release

**Estado:** Pendiente
**Objetivo:** publicar una versión estable y verificable.
**Depende de:** Fases 1-7.
**Criterio de salida:** release v2.0 con QA completo y PR integrado.

- [ ] F8.1 Lighthouse mobile/desktop.
- [ ] F8.2 Pruebas de responsive.
- [ ] F8.3 Revisión de links.
- [ ] F8.4 Revisión de contenido ES (y EN cuando Fase 2 se publique).
- [ ] F8.5 PR `develop` → `main`.
- [ ] F8.6 Tag y release v2.0.

## Proyectos — evaluación final

> **Nota de alcance (D13):** los proyectos se abordan al finalizar la base (portfolio + CV + LinkedIn).
> Se evalúa cada proyecto por separado y se mejoran todos antes de publicarlos como casos de estudio.
> Aquí se recogen además las métricas de alcance técnico que F1.1 dejó pendientes.

**Estado:** Pendiente — se abre después de Fase 8
**Depende de:** Fases 1–8.
**Criterio de salida:** cada proyecto tiene alcance documentado, repo presentable y evidencia real (sin placeholders).

- [ ] P1.1 Evaluar `sistemaVeterinario` (C#/EF Core/SQL Server): entidades, módulos, auth, tests, Docker, estado del repo.
- [ ] P1.2 Evaluar `arriendo-canchas` (Django/MySQL): modelos, vistas/endpoints, auth, tests, Docker, estado del repo.
- [ ] P1.3 Decidir y aplicar mejoras por proyecto (código, README, entorno reproducible).
- [ ] P1.4 Conseguir evidencia real (capturas o demo ejecutable) y retirar placeholders.
- [ ] P1.5 Convertir cada proyecto en caso de estudio (reemplaza la antigua F1.7).
- [ ] P1.6 Quitar "Demo" y el overlay hover-only (reemplaza la antigua F1.8).

## Backlog

- [ ] Publicar versión EN — criterio de salida de Fase 2 (objetivo 2027).
- [ ] CV en inglés — junto con la versión EN.
- [ ] Añadir nivel de inglés al sitio y al CV cuando exista.
- [ ] Proyecto Go con tests y README.
- [ ] Dominio propio.
- [ ] Analytics privacy-friendly.
- [ ] Formulario de contacto.
- [ ] Notas técnicas.
- [ ] Sticky Blur opcional (revisar contra D6 y el design system).

## Historial

### 2026-10-24 — Base del roadmap v2

- F1.1 cerrado: inglés A2 no se publica, disponibilidad part-time remoto, sin teléfono público.
- Certificado del bootcamp verificado (Awakelab / Talento Digital para Chile · 472 h · mar–ago 2023).
- Fase 2 desacoplada de la cadena y postergada a 2027.
- Proyectos movidos a evaluación final, uno por uno (D13).

### v1.0 — Portfolio base

- Sitio publicado en GitHub Pages.
- 2 proyectos, SEO técnico, favicon y OG image.
- Fuentes self-hosted.
- CI/CD y deploy.
- Lighthouse mobile 97 / desktop 100.
