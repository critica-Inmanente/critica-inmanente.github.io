# Guía de actualización: perfiles y publicaciones

Esta guía explica cómo mantener el catálogo académico del sitio. Todo se hace en Pages CMS (https://app.pagescms.org), sin tocar código. Si sigues estos pasos, el mantenimiento no depende de una sola persona.

## Cómo funciona

- **Perfil:** cada integrante tiene una página en `/investigadores/<slug>/`, con su biografía, adscripción, líneas de investigación, identificadores (ORCID, Google Scholar, página institucional) y la lista de sus publicaciones.
- **Ficha:** cada libro o investigación tiene una ficha en `/publicaciones/<slug>/`, con sus datos bibliográficos, las personas responsables y su papel, el DOI o ISBN, el tipo de acceso, una referencia para copiar y el enlace a la fuente.
- **Enlaces en ambos sentidos:** la relación entre una persona y una obra se registra una sola vez, en la lista «Personas responsables» de la obra.
  - Si se elige al integrante en esa lista, la obra aparece sola en su perfil y su nombre enlaza desde la ficha.
  - No hay listas copiadas a mano en varias páginas.
- **Datos para buscadores:** los datos estructurados (schema.org: ProfilePage, Person, Book, ScholarlyArticle, Chapter, Organization), la descripción, la URL canónica y el sitemap (`/sitemap.xml`) se generan solos a partir de esos mismos campos.

## Agregar una obra nueva

1. **El integrante envía la ficha de datos:**
   - título completo;
   - personas responsables, en el orden de la fuente editorial, con su papel (autoría, coordinación, edición académica, traducción, prefacio);
   - editorial o revista, año, volumen, número y páginas;
   - DOI o ISBN, el enlace a la fuente y el tipo de acceso.
2. **La persona responsable de contenidos verifica los datos** contra la fuente editorial o Crossref.
   - No se completan identificadores por conjetura.
   - Hay que distinguir «Producción de integrantes» de «Resultado del grupo».
3. **En Pages CMS → Libros o Investigaciones → Add an entry:**
   - **Dirección (slug):** en minúsculas, sin acentos y con guiones, por ejemplo `logica-de-la-abstraccion`. No se cambia después de publicar.
   - **Personas responsables:** una fila por persona. Si es integrante, se elige en el último campo de la fila.
   - **DOI:** solo el número, sin `https://doi.org/`.
   - **ISBN:** solo los de la edición que describe la ficha.
4. **Guardar.** En uno o dos minutos aparece la ficha y la obra se agrega al perfil.
5. **Revisión técnica:**
   - Abrir la ficha y el perfil, y comprobar los enlaces en ambos sentidos.
   - Validar la ficha en https://validator.schema.org/ pegando su URL.
   - Anotar la fecha de revisión en el registro de cambios.
6. **Revisión editorial:** si hace falta, se pide al titular que actualice su ORCID o Google Scholar y se revisa la versión en inglés de los campos.

## Agregar o cambiar un perfil

- Hay que llenar el **nombre académico preferente**, sin grado, y la **dirección (slug)** del perfil.
- Las variantes del nombre, la semblanza y los identificadores (ORCID, Scholar) se publican solo con la aprobación del titular.
- Las variantes del nombre van en «Variantes» y nunca generan un perfil aparte.

## Calendario sugerido

- **Novedades:** se publican dentro de los 10 días hábiles siguientes a recibir los datos completos y aprobados.
- **Cada mes:** revisar los enlaces y Google Search Console (páginas indexadas, errores).
- **Cada trimestre:** revisar adscripciones, proyectos, traducciones y la vigencia de los perfiles externos.

## Responsables (por definir con el grupo)

| Función | Persona |
|---|---|
| Contenidos (verificar datos, aprobar semblanzas) | _por definir_ |
| Mantenimiento técnico (publicar, validar, Search Console) | Pablo Ignacio Jiménez Cea |
| Revisión editorial | _por definir_ |
