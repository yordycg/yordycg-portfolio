# Roadmap — yordycg-portfolio

> Fuente de verdad del trabajo. Una fase activa a la vez.
> Última actualización: 2026-10-21

## Estado actual

- Fase activa: Fase 1 — Contenido e IA
- Próxima acción: confirmar datos pendientes (inglés, fechas, disponibilidad, métricas y teléfono)
- Release actual: v1.0 en GitHub Pages

## Convenciones

- `[ ]` pendiente
- `[x]` completado
- Cada fase indica estado, objetivo, dependencias, subtareas y criterio de salida.
- IDs de tarea: F1.1, F1.2, F2.1...
- No se abre una fase nueva hasta cerrar la anterior.

## Decisiones cerradas

- **D1:** Vanilla Web, sin frameworks.
- **D2:** Go no se muestra públicamente hasta tener un proyecto real.
- **D3:** Bilingüe con páginas estáticas ES/EN, no traducción por JS.
- **D4:** Dominio propio más adelante.
- **D5:** No habrá demos hasta tener evidencia real.
- **D6:** Dark-only por diseño.

## Fase 1 — Contenido e IA

**Estado:** En curso
**Objetivo:** que el sitio explique rol, stack y disponibilidad en 10 segundos.
**Depende de:** nada.
**Criterio de salida:** contenido ES aprobado, sin links falsos y sin Go público.

- [ ] F1.1 Confirmar nivel de inglés, fechas, disponibilidad, métricas y teléfono.
- [ ] F1.2 Reescribir title, description y OG.
- [ ] F1.3 Reestructurar header y navegación.
- [ ] F1.4 Crear hero con rol, propuesta y CTAs.
- [ ] F1.5 Reescribir "Sobre mí" uniendo formación, trayectoria y práctica.
- [ ] F1.6 Añadir sección Experiencia.
- [ ] F1.7 Convertir los 2 proyectos en casos de estudio.
- [ ] F1.8 Quitar "Demo" y el overlay hover-only.
- [ ] F1.9 Añadir Stack, Educación e Idiomas.
- [ ] F1.10 Reescribir Contacto y Footer.
- [ ] F1.11 Actualizar `docs/content.md` como fuente de contenido.
- [ ] F1.12 QA de contenido y aprobación.

## Fase 2 — Bilingüe ES/EN

**Estado:** Pendiente
**Objetivo:** ofrecer el portfolio completo en español e inglés sin duplicar deuda.
**Depende de:** Fase 1.
**Criterio de salida:** ambas páginas completas, con hreflang, canonical y sitemap.

- [ ] F2.1 Definir estructura `src/index.html` + `src/en/index.html`.
- [ ] F2.2 Traducir todo el contenido.
- [ ] F2.3 Añadir selector de idioma.
- [ ] F2.4 Configurar hreflang, x-default y canonical por idioma.
- [ ] F2.5 Actualizar sitemap con ambas URLs.
- [ ] F2.6 QA de paridad ES/EN.

## Fase 3 — Accesibilidad y UX

**Estado:** Pendiente
**Objetivo:** que el sitio sea usable con teclado, lector de pantalla y móvil.
**Depende de:** Fase 2.
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
**Depende de:** Fase 2.
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

## Fase 7 — README y CV

**Estado:** Pendiente
**Objetivo:** alinear el paquete completo: repositorio, sitio y CV.
**Depende de:** Fase 1.
**Criterio de salida:** README y CV consistentes con el sitio y orientados al rol.

- [ ] F7.1 README con URL, screenshot, estructura y scripts.
- [ ] F7.2 CV con link al portfolio.
- [ ] F7.3 Aclarar los 6 años en proyectos arquitectónicos.
- [ ] F7.4 Añadir Django, React Native y Bootstrap al CV.
- [ ] F7.5 Añadir inglés, disponibilidad y modalidad.
- [ ] F7.6 Revisar privacidad del teléfono.

## Fase 8 — QA y release

**Estado:** Pendiente
**Objetivo:** publicar una versión estable y verificable.
**Depende de:** Fases 1-7.
**Criterio de salida:** release v2.0 con QA completo y PR integrado.

- [ ] F8.1 Lighthouse mobile/desktop.
- [ ] F8.2 Pruebas de responsive.
- [ ] F8.3 Revisión de links.
- [ ] F8.4 Revisión de contenido ES/EN.
- [ ] F8.5 PR `feature/portfolio-v2` → `develop`.
- [ ] F8.6 Tag y release v2.0.

## Backlog

- [ ] Evidencia real de los 2 proyectos.
- [ ] Proyecto Go con tests y README.
- [ ] Dominio propio.
- [ ] CV en inglés.
- [ ] Analytics privacy-friendly.
- [ ] Formulario de contacto.
- [ ] Notas técnicas.
- [ ] Sticky Blur opcional (revisar contra D6 y el design system).

## Historial

### v1.0 — Portfolio base

- Sitio publicado en GitHub Pages.
- 2 proyectos, SEO técnico, favicon y OG image.
- Fuentes self-hosted.
- CI/CD y deploy.
- Lighthouse mobile 97 / desktop 100.
