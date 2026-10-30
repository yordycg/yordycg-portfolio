# yordycg-portfolio

Personal portfolio project built with a "Vanilla Web" stack.

## Philosophy

- **Minimalist:** Only what is necessary.
- **Performant:** Lightning-fast load times.
- **Framework-free:** Pure HTML, CSS, and JavaScript.
- **No runtime dependencies:** npm is used only for development tooling. The
  deployed site is the `src/` directory, served as-is.

## Tech Stack

- **HTML5 / CSS3 / ES Modules**
- **Node.js 22 + npm** (tooling only)
- **Biome** (linting and formatting)
- **Just** (command runner)
- **Podman + Nginx unprivileged** (local production serving)

## Getting Started

### Prerequisites

- Node.js 22
- [Just](https://github.com/casey/just)
- [Podman](https://podman.io/) + `podman-compose` (for `just prod`)

### Development

1. Install the development tooling:
   ```bash
   npm install
   ```
2. Start the development server (Browsersync with auto-reload):
   ```bash
   just dev
   ```
3. Open the URL printed in the terminal (default `http://localhost:3000`).

### Production (local)

1. Build and serve via Podman + Nginx:
   ```bash
   just prod
   ```
2. Open `http://localhost:8080`.

The container uses `nginx-unprivileged` and serves the built `src/` directory on
port 8080. Security headers are defined in `nginx.conf`.

## Quality Checks

- Lint and formatting: `npm run check`
- HTML validation: `npm run html`
- Broken links: `npm run links`
- Accessibility with axe: `npm run a11y`
- Lighthouse CI: `npm run lighthouse`
- Auto-fix formatting: `just format`
- Regenerate the Open Graph image: `just og`

`npm run a11y` and `npm run lighthouse` need a Chromium/Chrome installation.
In CI they run through the Playwright Chromium install.

## Deployment

GitHub Pages deploys only the `src/` directory. `package.json`,
`node_modules/`, scripts and documentation never reach the published site.
