# Project Architecture & Constraints

This project follows a strict "Vanilla Web" philosophy to ensure high performance, maintainability, and minimalism.

## Core Rules

- **Vanilla JS:** No frameworks (React, Vue, etc.) or heavy libraries. Use native DOM APIs and modern ES modules.
- **CSS Variables:** Use CSS custom properties for theming and consistent values across the application.
- **Mobile-First:** Design and develop for mobile devices first, then scale up using media queries.
- **Performance Constraints:** 
  - Minimize external dependencies.
  - Optimize assets (images, fonts).
  - Aim for near-perfect Lighthouse scores.
- **Modern Standards:** Use semantic HTML5 and modern CSS features (Grid, Flexbox).

## Git & Workflow

- **Conventional Commits:** All commits must follow the [Conventional Commits](https://www.conventionalcommits.org/) specification.
  - **Pattern:** `<type>(<scope>): <description>`
  - **Types:**
    - `feat`: New features.
    - `fix`: Bug fixes.
    - `chore`: Maintenance, tooling, or library updates.
    - `docs`: Documentation only changes.
    - `style`: Changes that do not affect the meaning of the code (white-space, formatting, etc).
    - `refactor`: Code change that neither fixes a bug nor adds a feature.
    - `perf`: Code change that improves performance.
    - `test`: Adding missing tests or correcting existing tests.
    - `build`: Changes that affect the build system or external dependencies.
    - `ci`: Changes to CI configuration files and scripts.
    - `revert`: Reverts a previous commit.
  - **Scope:** Always specify the scope in parentheses if the change is specific to a module or area (e.g., `feat(ui):`, `fix(js):`, `chore(docker):`).
- **Branching Strategy (Git Flow Lite):**
  - `main`: Production-ready code only. Highly stable.
  - `develop`: Integration branch for features.
  - `feature/*`: Development of new features or tasks.
- **Workflow:** Always branch off `develop` for new tasks. Merge into `develop` via PRs or controlled merges, and only merge `develop` into `main` for releases.

## Tooling

- **Biome:** Used for linting and formatting.
- **Just:** Command runner for common tasks.
- **Docker:** Used for local development and serving via Nginx.

## Communication & Collaboration

- **Discussion First:** Prioritize technical analysis, opinions, and recommendations before immediate code application.
- **Inquiry vs. Directive:** Treat any question or opinion as an "Inquiry". Provide a reasoned response and only proceed to implementation (the "Directive" phase) once it is explicitly requested or confirmed.
- **Socratic Method:** When appropriate, ask clarifying questions about the architectural impact of a choice before proposing a solution.

