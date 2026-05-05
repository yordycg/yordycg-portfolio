---
name: Mono Dark
colors:
  surface: '#131313'
  surface-dim: '#131313'
  surface-bright: '#393939'
  surface-container-lowest: '#0e0e0e'
  surface-container-low: '#1c1b1b'
  surface-container: '#201f1f'
  surface-container-high: '#2a2a2a'
  surface-container-highest: '#353534'
  on-surface: '#e5e2e1'
  on-surface-variant: '#bfc7d5'
  inverse-surface: '#e5e2e1'
  inverse-on-surface: '#313030'
  outline: '#89919e'
  outline-variant: '#3f4753'
  surface-tint: '#9fcaff'
  primary: '#9fcaff'
  on-primary: '#003259'
  primary-container: '#0099ff'
  on-primary-container: '#002f54'
  inverse-primary: '#0061a5'
  secondary: '#c6c6c7'
  on-secondary: '#2f3131'
  secondary-container: '#454747'
  on-secondary-container: '#b4b5b5'
  tertiary: '#c8c6c5'
  on-tertiary: '#303030'
  tertiary-container: '#969595'
  on-tertiary-container: '#2e2e2e'
  error: '#ffb4ab'
  on-error: '#690005'
  error-container: '#93000a'
  on-error-container: '#ffdad6'
  primary-fixed: '#d2e4ff'
  primary-fixed-dim: '#9fcaff'
  on-primary-fixed: '#001d36'
  on-primary-fixed-variant: '#00497e'
  secondary-fixed: '#e2e2e2'
  secondary-fixed-dim: '#c6c6c7'
  on-secondary-fixed: '#1a1c1c'
  on-secondary-fixed-variant: '#454747'
  tertiary-fixed: '#e5e2e1'
  tertiary-fixed-dim: '#c8c6c5'
  on-tertiary-fixed: '#1b1b1c'
  on-tertiary-fixed-variant: '#474746'
  background: '#131313'
  on-background: '#e5e2e1'
  surface-variant: '#353534'
typography:
  h1:
    fontFamily: Inter
    fontSize: 48px
    fontWeight: '700'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  h2:
    fontFamily: Inter
    fontSize: 32px
    fontWeight: '600'
    lineHeight: '1.2'
    letterSpacing: -0.01em
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.6'
    letterSpacing: '0'
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.6'
    letterSpacing: '0'
  accent:
    fontFamily: Space Grotesk
    fontSize: 14px
    fontWeight: '400'
    lineHeight: '1.4'
    letterSpacing: 0.05em
  caption:
    fontFamily: Space Grotesk
    fontSize: 12px
    fontWeight: '500'
    lineHeight: '1.2'
    letterSpacing: 0.1em
spacing:
  container-max: 1280px
  gutter: 2rem
  margin-x: 4rem
  section-gap: 8rem
  stack-sm: 0.5rem
  stack-md: 1.5rem
  stack-lg: 3rem
---

## Brand & Style

This design system is a sophisticated exercise in minimalism and structural clarity, specifically tailored for high-end professional portfolios. It draws heavily from the Brutalist and Minimalist movements, prioritizing content hierarchy over decorative flourish. 

The aesthetic is defined by its architectural rigor: using thin structural lines to define boundaries and generous whitespace to create a sense of breathing room and premium quality. The emotional response is one of precision, technical expertise, and quiet confidence. It avoids all trends associated with "soft" UI—there are no shadows, no blurs, and no organic shapes. Instead, it relies on a strict grid and the juxtaposition of functional sans-serif typography with technical monospace accents to communicate a "maker" or "engineer" persona.

## Colors

The color palette is rooted in a "Pure Dark" philosophy. The background is nearly black, providing a high-contrast foundation for stark white and light gray text. 

- **Primary:** An electric blue used exclusively for interactive highlights, focus states, or subtle links. It should be used sparingly to maintain the monochromatic feel.
- **Surface Tiers:** The main background is a deep neutral (`#121212`), while secondary containers or cards use a slightly lighter gray (`#1F1F1F`) to create flat depth without shadows.
- **Structural Lines:** Use a low-opacity white or a mid-tone gray to draw the 1px lines that separate the header, footer, and main content blocks.
- **Text:** High-importance content uses near-white (`#F5F5F5`), while metadata and secondary descriptions use a muted gray (`#EBEBEB` at 60-70% opacity) to establish hierarchy.

## Typography

Typography is the primary visual driver of this design system. We utilize a dual-font strategy: **Inter** for all functional reading and core interface elements, and **Space Grotesk** (as a modern monospace-adjacent substitute for technical feel) for metadata, labels, and accents.

Headlines should be tight, bold, and authoritative. Body text requires generous line heights to ensure readability against the dark background. The "Accent" and "Caption" styles should often be set in uppercase or with increased letter spacing to lean into the technical, blueprint-like aesthetic of the portfolio.

## Layout & Spacing

This design system uses a **Fixed Grid** model for desktop and a fluid model for smaller breakpoints. The layout is structured around horizontal "bands" separated by 1px solid lines.

- **The Grid:** A 12-column grid with wide gutters (2rem) and significant side margins (4rem+) to create a central column of content that feels curated.
- **Vertical Rhythm:** Sections are separated by large gaps (8rem) to force the user to focus on one project or content block at a time.
- **The Line:** Every major section change (Header to Main, Main to Footer) must be demarcated by a 1px border (`#F5F5F5` at 10% opacity). These lines should span the full width of the viewport, even if the content inside is constrained.

## Elevation & Depth

Depth in this system is entirely **flat and 2D**. We explicitly reject shadows, blurs, or gradients.

- **Hierarchy through Contrast:** Importance is conveyed by text weight and color brightness.
- **Structural Outlines:** Instead of using shadows to lift an element, use a 1px solid border to define it.
- **Tonal Layering:** To separate a card or a code block from the background, use a subtle shift in fill color (e.g., moving from `#121212` to `#1F1F1F`). 
- **The "Glassless" Effect:** Elements should feel like they are etched into a single plane or stacked as thin sheets of metal, rather than floating in 3D space.

## Shapes

The shape language is **geometric and sharp**. To maintain the technical, architectural feel inspired by the reference, a `0px` border radius is the default for almost all elements.

- **Buttons & Inputs:** Hard 90-degree corners.
- **Images:** Strictly rectangular with no rounding.
- **Exception:** Small "pills" or tags may use a full border radius only if they are being used as secondary UI "chips," but the preferred style remains sharp.

## Components

### Buttons
Buttons are rectangular with no radius. The primary button is an "Inverted" style: white background with black text. Secondary buttons use a transparent background with a 1px white border. Hover states should be a simple color inversion.

### Chips / Tags
Used for categories or tech stacks. These use the `Space Grotesk` font in uppercase. They are styled as light-gray backgrounds with dark-gray text, or simply outlined.

### Cards
Cards are not "containers" in the traditional sense. They are defined by their alignment within the grid and an optional 1px top border. Do not wrap portfolio items in boxed containers unless the background color needs to change.

### Input Fields
Minimalist 1px bottom border only. The label sits above in the `Caption` monospace style. Focus state changes the bottom border to the Primary Color (`#0099FF`).

### Structural Separators
A signature component. A horizontal rule `<hr>` used to divide sections. On hover, these lines can subtly brighten to indicate interactivity in adjacent sections.