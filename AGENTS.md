# Pautas para Asistentes de IA (AGENTS.md) — yordycg-portfolio

Este repositorio es el portfolio personal de Yordy, construido con una filosofía estricta **"Vanilla Web"**.

> opencode, pi y agy cargan este archivo automáticamente (estándar `AGENTS.md`). `CLAUDE.md` importa este documento.

## Core Rules (Vanilla Web)

- **Vanilla JS:** sin frameworks (React, Vue, etc.) ni librerías pesadas. Usar APIs nativas del DOM y ES modules.
- **CSS Variables:** usar custom properties para temas y valores consistentes en toda la aplicación.
- **Mobile-First:** diseñar y desarrollar primero para móvil, luego escalar con media queries.
- **Performance:** minimizar dependencias externas, optimizar assets (imágenes, fuentes), apuntar a Lighthouse casi perfecto.
- **Estándares modernos:** HTML5 semántico y CSS moderno (Grid, Flexbox).

## Nomenclatura

- **Identificadores en inglés:** clases CSS, `id`, nombres de archivo y nombres de atributo (`data-tooltip`, no `data-tooltip-texto`).
- **Contenido en español:** copy visible y todo lo que consume una persona, incluidos `aria-label`, `alt` y los valores de `data-tooltip`. Son texto para leer, no identificadores.

## Git & Workflow

- **Conventional Commits:** obligatorio. Patrón `<type>(<scope>): <description>`.
  - Tipos: `feat`, `fix`, `chore`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `revert`.
  - Scope en paréntesis cuando aplique (e.g., `feat(ui):`, `fix(js):`, `chore(docker):`).
- **Branching (Git Flow Lite):**
  - `main`: solo producción, altamente estable.
  - `develop`: integración de features.
  - `feature/*`: desarrollo de nuevas features o tareas.
  - Flujo: ramificar desde `develop`; integrar a `develop` vía PR o merge controlado; `develop` → `main` solo para releases.

## Tooling

- **Biome:** linting y formateo.
- **Just:** command runner (`just dev`, `just prod`, `just lint`, `just format`).
- **Podman + Nginx Alpine:** producción local y serving.

## Communication & Collaboration

- **Discussion First:** priorizar análisis técnico, opiniones y recomendaciones antes de aplicar código.
- **Inquiry vs. Directive:** tratar preguntas/opiniones como "Inquiry"; responder razonadamente y pasar a implementación solo cuando se solicite o confirme explícitamente.
- **Socratic Method:** cuando aplique, preguntar por el impacto arquitectónico de una decisión antes de proponer una solución.

## Obsidian Vault

- Vault: `/home/yordycg/workspace/personal/obsidian-notes`
- Nota del proyecto: `300 Projects/yordycg-portfolio.md`
- Al cerrar una sesión con decisiones relevantes, actualizar esa nota (estado, próxima acción, decisiones).
