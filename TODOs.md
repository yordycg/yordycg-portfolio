# Roadmap — yordycg-portfolio

> Fuente de verdad del trabajo. Una fase activa a la vez.
> Última actualización: 2026-10-30

## Estado actual

- Fase activa: Fase 3 - Accesibilidad y UX
- Próxima acción: F3.2 - skip link y landmarks.
- Release actual: v1.1.1 en GitHub Pages
- Base definida: decisiones D7–D16 (idioma, rubro anterior, disponibilidad, certificado, flujo de ramas, regla del stack, nomenclatura y privacidad del CV)

## Convenciones

- `[ ]` pendiente
- `[x]` completado
- Cada fase indica estado, objetivo, dependencias, subtareas y criterio de salida.
- IDs de tarea: F1.1, F1.2, P1.1...
- No se abre una fase nueva hasta cerrar la anterior. Excepción: Fase 2, postergada a 2027 y desacoplada.
- Una rama por fase: `feature/f1-content`, `feature/f2-bilingue`, etc. Se integra a `develop` vía PR.
- `develop` se integra a `main` solo en release.

## Decisiones cerradas

- **D1:** Vanilla Web, sin frameworks.
- **D2:** Go no se muestra públicamente hasta tener un proyecto real.
- **D3:** Bilingüe con páginas estáticas ES/EN, no traducción por JS. (Postergado: ver D7 y Fase 2.)
- **D4:** Dominio propio más adelante.
- **D5:** No habrá demos hasta tener evidencia real.
- **D6:** Dark-only por diseño.
- **D7:** El inglés no se publica hasta poder sostener una entrevista técnica en inglés. Sin sección Idiomas.
- **D8:** El rubro anterior (proyectos de arquitectura, 2017–2022) no se menciona en el sitio. En el CV va una línea neutra, sin funciones. El sitio lidera con la identidad nueva.
- **D9:** Disponibilidad = oportunidad laboral · remoto. No se usa "práctica": esa palabra significa la pasantía curricular, no trabajo remunerado. Sin distinción part-time/full-time en el badge; la ventana concreta (full-time dic–feb) vive en Contacto.
- **D10:** Ambos proyectos son académicos. Sin métricas de uso: se usa alcance técnico verificable.
- **D11:** El certificado del bootcamp no se publica en el sitio ni se versiona en el repositorio (contiene RUT). Vive en almacenamiento privado, fuera de Git. Si se muestra, solo versión redactada.
- **D12:** El bootcamp se presenta como formación (472 h, programa estatal), nunca como nivel autodeclarado de JavaScript. En el sitio las horas no se publican (F1.4): el dato vive en el CV.
- **D13:** Los proyectos se evalúan al final, uno por uno, después de cerrar la base (portfolio + CV + LinkedIn). Ver sección "Proyectos — evaluación final".
- **D14:** Regla del stack: solo se publica lo que pasa la prueba de defensa (explicarlo 60 s sin notas y poder modificarlo). Lo que no pase no se publica; no hay lista de "aprendiendo".
- **D15:** Nomenclatura: clases CSS, `id`, nombres de archivo y de atributo en inglés; `aria-label`, `alt`, valores de `data-tooltip` y copy visible en español.
- **D16:** El sitio no publica el teléfono. El CV descargable sí lo incluye, por decisión de reclutamiento; se revisa en F7.6.

## Fase 1 — Contenido e IA

**Estado:** Cerrada y publicada en v1.1 (hotfix v1.1.1)
**Objetivo:** que el sitio explique rol, stack y disponibilidad en 10 segundos.
**Depende de:** nada.
**Criterio de salida:** contenido ES aprobado, sin links falsos y sin Go público.

- [x] F1.1 Confirmar inglés, fechas, disponibilidad, métricas y teléfono.
  - Inglés: A2 autodidacta, sin certificado → no se publica (D7).
  - Fechas: Ariancif dic 2017 – dic 2022 · bootcamp mar–ago 2023 · Ing. Informática mar 2024 – nov 2027.
  - Disponibilidad: oportunidad laboral · remoto. Ventana full-time dic–feb (verano): clases hasta el 22 de noviembre y regreso la segunda semana de marzo.
  - Teléfono: no se publica en el sitio; el CV descargable sí lo incluye (D16). Métricas: se recogen en "Proyectos — evaluación final" (P1).
- [x] F1.2 Reescribir title, description y OG (description de 152 caracteres; OG y Twitter con URL absoluta).
- [x] F1.3 Reestructurar header y navegación y eliminar el link a X de los socials (`aria-label` en el nav, header visible desde el inicio). El logo se eliminó en F1.4: el nombre vive en el `h1` del hero.
- [x] F1.4 Crear el hero de la primera pantalla: `h1` = nombre, rol como subtítulo, stack, badge `Disponible · remoto` y CTAs GitHub/LinkedIn/CV. Sustituye a la sección About.
- [x] F1.5 About: absorbido por F1.4. El párrafo del hero reemplaza la sección; no hay bloque "Formación" (el bootcamp entra en una frase, sin horas).
- [x] F1.9 Stack: línea en el hero (absorbido por F1.4). Sin sección Idiomas y sin lista de "aprendiendo". La validación de cada tecnología queda en F1.14.
- [x] F1.10 Reescribir Contacto y Footer: badge `Disponible · remoto`, título "Busco mi primera oportunidad en backend. Si encaja, hablemos.", nota de la ventana full-time (dic–feb, 3 meses) y dos canales (email + LinkedIn). El título grande deja de ser `h2` para no duplicar el encabezado de la sección. Footer sin cambios.
- [x] F1.11 Actualizar `docs/content.md` como fuente de contenido (sección Proyectos se completa en P1.5).
- [x] F1.12 QA de contenido y aprobación: description verificada (152), `site.webmanifest` con el nombre real, `alt` de los proyectos vaciado (las imágenes son placeholders decorativos) y revisión de links. El CV descargable queda desactualizado a propósito: se rehace en F7.2.
- [x] F1.13 Certificado del bootcamp recuperado y verificado: Awakelab/Adalid · "Desarrollo de Aplicaciones Full Stack JavaScript Trainee" · Talento Digital para Chile · mar–ago 2023 · 472 h.
- [x] F1.14 Auditar el stack con la prueba de defensa (D14). Resultado: `EF Core` y `MySQL` salen de la línea del hero (siguen en las etiquetas de los proyectos). Línea publicada: `C# · .NET · SQL Server · Python · Django · HTML/CSS/JS`.

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

**Estado:** En curso
**Objetivo:** que el sitio sea usable con teclado, lector de pantalla y móvil.
**Depende de:** Fase 1.
**Criterio de salida:** navegación completa por teclado y sin contenido oculto inaccesible.

- [x] F3.1 Header visible desde el inicio (adelantado en F1.3).
- [ ] F3.2 Skip link y landmarks.
- [ ] F3.3 Navegación por teclado y foco visible.
- [ ] F3.4 Proyectos accesibles sin hover.
- [ ] F3.5 Tooltip del CV accesible o eliminado (ahora se abre hacia arriba: el botón vive al pie del sidebar).
- [ ] F3.6 Labels con nombre de proyecto y aviso de nueva pestaña.
- [ ] F3.7 QA con teclado, axe y lector de pantalla básico.
- [x] F3.8 Navegación lateral con sección activa (adelantada en F1). Barra fija de `16rem` a la izquierda en `>=1024px`, nav vertical con el CV como último ítem, estado activo con `aria-current="location"` + `.is-active` vía `IntersectionObserver`, y `scroll-padding-top: 0` en desktop. El header móvil queda opaco desde el inicio: se elimina el listener de scroll de `app.js`. El bloque del CV comparte `--footer-height` con el footer: si uno cambia de alto, el otro también.

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

- [x] F5.1 OG y Twitter image absolutos (adelantado en F1.2).
- [ ] F5.2 JSON-LD completo y correcto.
- [x] F5.3 `og:image:width/height/alt`, `twitter:image:alt`, `theme-color` (adelantado en v1.1.1).
- [ ] F5.4 Completar `site.webmanifest`.
- [x] F5.5 Link a `favicon.ico` (adelantado en v1.1.1).
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
- [ ] F7.2 CV con link al portfolio. El PDF publicado hoy es anterior a F1: puede seguir pidiendo "práctica" y no menciona el sitio.
- [ ] F7.3 Empleo anterior (2017–2022): una sola línea neutra en el CV, sin funciones (D8).
- [ ] F7.4 Añadir Django, React Native y Bootstrap al CV.
- [x] F7.6 Revisar privacidad del teléfono y del RUT en CV y certificado. Decisión v1.1.1: certificado fuera del repositorio e historial; el sitio no publica teléfono y el CV descargable sí lo incluye (D16).
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
**Criterio de salida:** cada proyecto tiene alcance documentado, repo presentable y evidencia real (sin placeholders), y el autor puede explicar y modificar su código sin IA.

- [ ] P1.1 Evaluar `sistemaVeterinario` (C#/EF Core/SQL Server): entidades, módulos, auth, tests, Docker, estado del repo.
- [ ] P1.2 Evaluar `arriendo-canchas` (Django/MySQL): modelos, vistas/endpoints, auth, tests, Docker, estado del repo.
- [ ] P1.3 Decidir y aplicar mejoras por proyecto (código, README, entorno reproducible).
- [ ] P1.4 Conseguir evidencia real (capturas o demo ejecutable) y retirar placeholders. Las imágenes actuales (`project-2.webp`, `project-3.webp`) son tarjetas de diseño que dicen "PREVIEW": llevan `alt=""` hasta que se reemplacen por capturas reales.
- [ ] P1.5 Convertir cada proyecto en caso de estudio (reemplaza la antigua F1.7).
- [ ] P1.6 Quitar "Demo" y el overlay hover-only (reemplaza la antigua F1.8).
- [ ] P1.7 Prueba de defensa por proyecto: explicar una parte del código y modificarla sin IA. Sin esto no se publica el caso de estudio.

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

### v1.1.1 — Privacidad y cara pública

- Certificado del bootcamp retirado del repositorio y de todo el historial; queda en almacenamiento privado (D11).
- Teléfono: el sitio no lo publica; el CV descargable sí lo incluye por decisión de reclutamiento (D16, F7.6).
- OG image regenerada con la identidad v1.1: nombre, rol, stack, disponibilidad y solo GitHub/LinkedIn.
- Metadatos sociales completos (`og:image:width/height/alt`, `twitter:image:alt`, `theme-color`) y link a `favicon.ico` (F5.3/F5.5).
- Enlaces `Demo` retirados: apuntaban al README; la tarjeta 1 pasa a llamarse `Sistema Veterinario`.
- Description documentada con su longitud real (152 caracteres).
- Fuente base del `body` fijada a Inter para que el `h1` y el rol no hereden `system-ui`.

### 2026-10-24 — Base del roadmap v2

- F1.1 cerrado: inglés A2 no se publica, disponibilidad remota (sin etiqueta part-time; D9), sin teléfono en el sitio.
- Certificado del bootcamp verificado (Awakelab / Talento Digital para Chile · 472 h · mar–ago 2023).
- Fase 2 desacoplada de la cadena y postergada a 2027.
- Proyectos movidos a evaluación final, uno por uno (D13).
- Rubro anterior (arquitectura) fuera del sitio; una línea neutra en el CV (D8).
- Stack redefinido con prueba de defensa; PostgreSQL queda fuera del sitio (D14).

### v1.1 — Contenido e IA (F1)

- Hero de primera pantalla: nombre como `h1`, rol, stack, badge de disponibilidad y CTAs.
- Sidebar fija de `16rem` en desktop con sección activa vía `IntersectionObserver`.
- Contacto con dos canales (email + LinkedIn) y ventana full-time dic–feb.
- Stack recortado a seis tecnologías tras la prueba de defensa: `EF Core` y `MySQL` salen de la línea.
- Manifest con el nombre real y `alt` vacío en los placeholders de proyectos.
- El CV descargable queda desactualizado a propósito; se rehace en F7.2.

### v1.0 — Portfolio base

- Sitio publicado en GitHub Pages.
- 2 proyectos, SEO técnico, favicon y OG image.
- Fuentes self-hosted.
- CI/CD y deploy.
- Lighthouse mobile 97 / desktop 100.
