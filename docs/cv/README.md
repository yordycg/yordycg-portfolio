# CV — fuente editable

El CV publicado vive en `src/assets/yordy-carmona-cv.pdf`.
La fuente editable vive aquí, fuera del deploy:

- `index.html` — contenido.
- `cv.css` — estilos de impresión.
- `../../scripts/cv.mjs` — genera el PDF con Playwright.

## Regenerar

```bash
npm run cv
```

El comando escribe directamente en `src/assets/yordy-carmona-cv.pdf`.

## Reglas ATS

El CV está pensado para pasar filtros automáticos:

- Una sola columna.
- Sin tablas, iconos, foto ni gráficos.
- Contacto en el cuerpo, no en header/footer.
- Secciones estándar: Perfil, Experiencia, Proyectos, Educación, Habilidades.
- Fechas `mes año – mes año`.
- Fuente Arial/Liberation Sans embebida como TrueType.
- PDF con capa de texto, una página A4.
- Enlaces visibles a GitHub, LinkedIn y portfolio.
- Keywords reales: Python, Django, C#, .NET, SQL Server, MySQL, Git, Docker,
  Linux.

## Editar contenido

1. Cambiar textos en `index.html`.
2. Ejecutar `npm run cv`.
3. Verificar:
   - una sola página (`pdfinfo` o abrir el PDF);
   - `pdftotext -layout` mantiene el orden;
   - aparecen email, teléfono, GitHub, LinkedIn y portfolio;
   - los enlaces siguen visibles.

## Validación recomendada

- Abrir el PDF en un lector y revisar que todo sea seleccionable.
- Pasar el PDF por un checker tipo Jobscan o Resume Worded contra una vacante
  real.
- Ajustar keywords solo si son defendibles en entrevista.

## Historial

El CV anterior queda recuperable en el historial de Git (tag `v1.5`). No se
mantiene una copia pública adicional para evitar duplicar datos personales.
