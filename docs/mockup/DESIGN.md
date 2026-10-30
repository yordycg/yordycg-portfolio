---
name: Mono Dark
colors:
  background: '#131313'
  surface: '#1f1f1f'
  text: '#e5e2e1'
  text-muted: '#bfc7d5'
  primary: '#0099ff'
  primary-soft: '#9fcaff'
  success: '#38ce47'
  border: 'rgba(229, 226, 225, 0.1)'
  border-strong: '#89919e'
typography:
  h1:
    fontFamily: Inter
    fontSize: clamp(3.6rem, 2.8rem + 3vw, 4.8rem)
    fontWeight: '700'
    lineHeight: '1.15'
    letterSpacing: -0.02em
  h2:
    fontFamily: Inter
    fontSize: clamp(3rem, 2.4rem + 2vw, 3.2rem)
    fontWeight: '700'
    lineHeight: '1.15'
    letterSpacing: -0.02em
  h3:
    fontFamily: Inter
    fontSize: 2.4rem
    fontWeight: '700'
    lineHeight: '1.15'
  body-lg:
    fontFamily: Inter
    fontSize: 1.8rem
    fontWeight: '400'
    lineHeight: '1.6'
    letterSpacing: '0'
  body-md:
    fontFamily: Inter
    fontSize: 1.6rem
    fontWeight: '400'
    lineHeight: '1.6'
    letterSpacing: '0'
  accent:
    fontFamily: Space Grotesk
    fontSize: 1.2rem
    fontWeight: '600'
    lineHeight: '1.4'
    letterSpacing: 0.05em
  caption:
    fontFamily: Space Grotesk
    fontSize: 1.2rem
    fontWeight: '500'
    lineHeight: '1.2'
    letterSpacing: 0.1em
spacing:
  container-max: 1200px
  gutter-mobile: 2rem
  gutter-desktop: 4rem
  section-padding-mobile: 6rem
  section-padding-desktop: 8rem
  sidebar-width: 16rem
  footer-height: 10rem
  stack-sm: 0.8rem
  stack-md: 1.6rem
  stack-lg: 3.2rem
breakpoints:
  mobile: 30em
  projects-single-column: 36em
  desktop: 64em
---

## Brand & Style

This design system is a minimal, structural portfolio system. It prioritizes content hierarchy, generous whitespace and sharp geometry over decorative flourish.

The aesthetic is technical and architectural: thin structural lines define boundaries, flat surface shifts create depth, and there are no shadows, blurs or organic shapes. The only intentional gradient is the section halo described below.

## Colors

The palette is dark-only by design (`color-scheme: dark`).

- **Background:** `#131313`.
- **Surface:** `#1f1f1f` for cards and status badges.
- **Text:** `#e5e2e1` for primary content.
- **Muted text:** `#bfc7d5` for descriptions and metadata.
- **Primary:** `#0099ff` for interactive highlights, focus rings and active navigation.
- **Soft primary:** `#9fcaff` for small accent labels.
- **Success:** `#38ce47` for availability dots.
- **Borders:** `rgba(229, 226, 225, 0.1)` for structural lines; `#89919e` for hover/focus borders.

### Section halo

Each section opens and closes with the `--section-glow` radial gradient: a subtle blue ellipse over the section boundary. It is the single intentional exception to the “no gradients” rule. Do not add other decorative gradients.

## Typography

The system uses two families:

- **Inter** for reading, headings and interface text.
- **Space Grotesk** as the technical accent for labels, tags, badges, buttons and metadata.

Space Grotesk is **not** a monospace font. The token is `--font-accent`, not `--font-mono`.

Headings are tight and bold. Body copy uses generous line height. Accent and caption styles are usually uppercase with increased letter spacing.

## Layout & Spacing

The layout is mobile-first and fluid until the desktop sidebar appears.

- **Container:** `1200px` maximum width, centered with `2rem` gutters on mobile and `4rem` on desktop.
- **Hero:** 12-column grid on desktop; two columns of content. This is the only section that reserves `100svh`.
- **Sidebar:** fixed `16rem` at `>=64em`, with the CV action pinned to the bottom.
- **Footer:** `10rem` minimum height, matching the sidebar CV block.
- **Sections:** `6rem` vertical padding on mobile and `8rem` on desktop.
- **Project grid:** `auto-fit` with a `32rem` minimum card width; single column below `36em`.

### Structural lines

Major boundaries (header, sidebar and section separators) use `2px` lines. Cards and internal surfaces use `1px` lines. Lines span the content width and fade at the edges where the design calls for it.

## Elevation & Depth

Depth is flat and 2D.

- **Hierarchy through contrast:** text weight and color brightness carry importance.
- **Structural outlines:** use a `1px` border instead of a shadow.
- **Tonal layering:** cards use `#1f1f1f` over the `#131313` background.
- **No shadows or blurs:** elements are etched into a single plane.

## Shapes

The shape language is geometric and sharp.

- **Default radius:** `0`.
- **Buttons and inputs:** hard 90-degree corners.
- **Images:** rectangular, no rounding.
- **Tags:** keep square corners; no pill shapes in the current design.

## Components

### Buttons

Rectangular, no radius, minimum height `44px`.

- **Primary:** inverted; light background with dark text. Hover/focus inverts back to transparent.
- **Secondary:** transparent with a `1px` border. Hover/focus fills with the text color.
- **CV:** the header action uses the accent font, uppercase, with a `44px` minimum height.

### Project cards

- Image on top, information below.
- Title, description, code link and tags are always visible. There is no hover-only overlay.
- Each card is an `article` labelled by its title.
- The code link includes the project name and a new-tab warning in its accessible name.

### Tags

Small technology labels use Space Grotesk uppercase at `1.2rem` minimum, with a `1px` border and the primary color.

### Status badges

Availability badges combine a success dot with uppercase accent text on a `#1f1f1f` surface.

### Input fields

Not used yet. If a form is added, use a single `1px` bottom border and the primary color for focus.

## Accessibility

- Skip link visible on keyboard focus.
- Global `:focus-visible` outline in the primary color.
- Minimum touch target of `44px` for interactive controls.
- `prefers-reduced-motion` disables animations and smooth scrolling.
- Sections are named with `aria-labelledby`; project articles are named by their headings.
- The site must remain usable with JavaScript disabled.

## Structural separators

Section separators are horizontal lines with a soft fade at both ends. They are decorative and should not be the only way to understand section boundaries.
