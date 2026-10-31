# Contenido — fuente de verdad (ES)

Todo el copy del sitio vive aquí primero. `src/index.html` solo consume este documento.
Si un texto no está en esta página, no se publica.

---

## Metadatos

- **title:** `Yordy Carmona — Desarrollador Backend en Formación`
- **description:** `Backend en formación. Estudiante de Ingeniería en Informática, 3er año. APIs y datos con C#/.NET y Django. Busco mi primera oportunidad laboral, remoto.` (152 caracteres: dentro del límite de escritorio; en móvil Google corta cerca de 120 igual)
- **og:title:** igual que `title`
- **og:description:** igual que `description`
- **og:locale:** `es_CL`

---

## Hero

Primera pantalla y, a la vez, todo el "sobre mí" del sitio. Absorbe la antigua sección About (F1.5).

- **badge:** `Disponible · remoto`
- **h1:** `Yordy Carmona`
- **subtítulo:** `Desarrollador backend en formación`
- **stack:** `C# · .NET · SQL Server · Python · Django · HTML/CSS/JS`
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

Copy provisional de las tarjetas. P1.5 lo reescribirá como caso de estudio después de
evaluar cada repositorio. Las imágenes actuales son placeholders y llevan `alt=""` hasta
que P1.4 las reemplace por capturas reales.

- **Sistema Veterinario**
  - Descripción: `Relaciones de datos entidad-relación complejas (Dueños, Mascotas, Veterinarios, Citas, etc.)`
  - Stack: `C# · Entity Framework Core · SQL Server · Docker · Bootstrap 5`
  - Enlace: `https://github.com/yordycg/sistemaVeterinario`
- **Sistema de Arriendo de Canchas**
  - Descripción: `Gestión de reservas y disponibilidad de los recursos.`
  - Stack: `Python · Django · MySQL · Docker · Bootstrap 5`
  - Enlace: `https://github.com/yordycg/arriendo-canchas`

- Los enlaces `Demo` se retiraron en v1.1.1: apuntaban al README, no a una demo.
- Desde F3.4 la descripción y el enlace `Código` están siempre visibles; ya no hay
  overlay dependiente de hover.

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
  - GitHub no se repite aquí: ya está en el hero.
  - **Teléfono:** no se publica en el sitio. El CV descargable sí lo incluye, por
    decisión de reclutamiento (ver F7.6).

---

## Footer

- `© 2026 YordyCG`
- `Chile`
  - Es el único lugar del sitio donde aparece el alias. El nombre completo vive en el `h1`,
    el `title` y el OG.

---

## Notas de contenido

- **Año de egreso:** el sitio no publica fechas; el CV y LinkedIn usan `2024–2027`. Si el
  egreso real cambia, actualizar esas dos superficies.
- **Stack defendible:** auditado en F1.14 con la prueba de defensa. `EF Core` y `MySQL` salieron de
  la línea del hero: siguen en las etiquetas de los proyectos, donde son un hecho verificable.
  `C#`, `.NET`, `SQL Server`, `Python`, `Django` y `HTML/CSS/JS` se mantienen.

## Fuera del sitio a propósito

- **Experiencia en arquitectura (dic 2016 – dic 2022):** no se menciona en el sitio.
  En el CV va una sola línea neutra, sin funciones (F7.3). El sitio lidera con la identidad
  nueva; el historial laboral completo vive en el CV y en LinkedIn.
