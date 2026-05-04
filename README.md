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
- **Docker & Nginx Alpine** (Infrastructure)

## Getting Started

### Prerequisites

- [Docker](https://www.docker.com/)
- [Just](https://github.com/casey/just)
- [Biome](https://biomejs.dev/) (Optional, but recommended)

### Development

1. Start the development server:
   ```bash
   just dev
   ```
2. Open `http://localhost:8080`.

### Linting & Formatting

- Check for issues: `just lint`
- Auto-fix issues: `just format`
