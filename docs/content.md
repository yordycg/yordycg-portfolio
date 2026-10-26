# Contenido — fuente de verdad (ES)

Todo el copy del sitio vive aquí primero. `src/index.html` solo consume este documento.
Si un texto no está en esta página, no se publica.

---

## Metadatos

- **title:** `Yordy Carmona — Desarrollador Backend en Formación`
- **description:** `Backend en formación. Estudiante de Ingeniería en Informática, 3er año. APIs y datos con C#/.NET y Django. Busco mi primera oportunidad laboral, remoto.` (152 caracteres: entra sin truncarse en Google)
- **og:title:** igual que `title`
- **og:description:** igual que `description`
- **og:locale:** `es_CL`

---

## Hero

Primera pantalla y, a la vez, todo el "sobre mí" del sitio. Absorbe la antigua sección About (F1.5).

- **badge:** `Disponible · remoto`
- **h1:** `Yordy Carmona`
- **subtítulo:** `Desarrollador backend en formación`
- **stack:** `C# · .NET · EF Core · SQL Server · Python · Django · MySQL · HTML/CSS/JS`
- **párrafo 1:** `Egresado de un bootcamp full-stack y actualmente estudiante de tercer año de Ingeniería en Informática. Explorando activamente nuevas formas de aprender y crecer en el sector TI.`
- **párrafo 2:** `Busco mi primera oportunidad laboral para integrarme en un equipo real y aportar en problemas concretos.`
- **botones:** `GitHub` · `LinkedIn` · `Descargar CV`
  - El CV es la acción primaria (único con relleno).
  - GitHub y LinkedIn van con borde.
- **navegación:** `Sobre mí` · `Proyectos` · `Contacto` · `CV`
  - `Sobre mí` apunta a `#home`: la primera pantalla y el about son la misma sección.
  - No hay logo en el header: el nombre ya está en el `h1`.

Regla del stack: solo entra lo que pasa la prueba de defensa (explicarlo 60 s sin notas y
poder modificarlo). Lo que no pase, no se publica.

Decisiones que este hero fija:

- El `h1` es el nombre, no el rol: el rol baja a subtítulo.
- El badge no dice "práctica". Se busca trabajo remunerado, no la pasantía curricular de la
  carrera (ver D9).
- Las 472 h del bootcamp no se publican en el sitio: el dato queda en el CV (F7).
- No hay sección About ni bloque "Formación".

---

## Proyectos

Pendiente. Se define en la fase "Proyectos — evaluación final" (P1.5), después de evaluar
cada repositorio por separado. En Fase 1 la sección queda como está.

---

## Contacto

- **status:** `Disponible · remoto`
- **title:** `Busco mi primera oportunidad en backend. Si encaja, hablemos.`
- **note:** `Full-time por 3 meses: diciembre a febrero.`
  - Sale del calendario académico: clases hasta el 22 de noviembre y regreso la segunda
    semana de marzo, así que diciembre, enero y febrero quedan completos.
  - Sin año: la ventana es recurrente y no envejece.
- **actions:** `Email` · `LinkedIn`
  - email: `yordycarmona.dev@gmail.com`
  - LinkedIn: `https://linkedin.com/in/yordy-carmona`
  - GitHub no se repite aquí: ya está en el hero y en el footer del sitio.

---

## Footer

- `© 2026 YordyCG`
- `Chile`
  - Es el único lugar del sitio donde aparece el alias. El nombre completo vive en el `h1`,
    el `title` y el OG.

---

## Pendiente de confirmar

Abierto, no bloquea la escritura del sitio:

- **Año de egreso:** no se publica en el sitio (el párrafo del hero no lleva fechas), pero
  afecta al CV (F7.2). Verificar si el programa es de 4 años o si el egreso real es 2028.
- **Stack defendible:** confirmar que `EF Core`, `SQL Server`, `Django` y `MySQL` pasan la
  prueba de defensa (60 s + poder modificarlo). Si alguno no pasa, sale (F1.14).

## Fuera del sitio a propósito

- **Experiencia en proyectos de arquitectura (2017–2022):** no se menciona en el sitio.
  En el CV va una sola línea neutra, sin funciones (F7.3). El sitio lidera con la identidad
  nueva; el historial laboral completo vive en el CV y en LinkedIn.
