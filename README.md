# yordycg-portfolio

Personal portfolio project built with a "Vanilla Web" stack.

## Philosophy

- **Minimalist:** Only what is necessary.
- **Performant:** Lightning-fast load times.
- **Framework-free:** Pure HTML, CSS, and JavaScript.

## Tech Stack

- **HTML5 / CSS3 / ES Modules**
- **Biome** (Linting & Formatting)
- **Just** (Command Runner)
- **Podman & Nginx Alpine** (Production)

## Getting Started

### Prerequisites

- [Just](https://github.com/casey/just)
- [Podman](https://podman.io/) (for `just prod`)
- [Biome](https://biomejs.dev/) (Optional, but recommended)

### Development

1. Start the development server (Browsersync with auto-reload):
   ```bash
   just dev
   ```
2. Open the URL printed in the terminal (default `http://localhost:3000`).

### Production (local)

1. Build and serve via Podman + Nginx:
   ```bash
   just prod
   ```
2. Open `http://localhost:8080`.

### Linting & Formatting

- Check for issues: `just lint`
- Auto-fix issues: `just format`
