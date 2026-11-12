# Crítica Inmanente — sitio web

Sitio del grupo de investigación **Crítica Inmanente** (teoría crítica de la sociedad). Se publica con GitHub Pages y se edita con [Pages CMS](https://app.pagescms.org).

## Cómo editar (sin tocar código)

1. Entra a https://app.pagescms.org con tu cuenta de GitHub y abre el proyecto **critica-Inmanente / critica-inmanente.github.io**.
2. En el menú izquierdo elige la sección: Entradas, Investigaciones, Libros, Integrantes, Eventos, Difusión, Página de inicio, Acerca de, Contacto o Menú.
3. Pulsa **Add an entry** (o abre una existente), llena el formulario y pulsa **Save**.
4. En uno o dos minutos el cambio aparece en el sitio.

Imágenes y PDF se suben desde los propios campos del formulario (quedan en `assets/uploads/`).

## Español e inglés

El botón **EN / ES** del encabezado cambia todo el sitio de idioma (la elección se recuerda en el navegador). Cada formulario de Pages CMS tiene campos «(inglés)»: si se dejan vacíos, se muestra el texto en español. Los títulos, presentaciones, botones y avisos fijos se editan en **Textos del sitio**.

## Estructura

| Carpeta / archivo | Contenido |
|---|---|
| `_posts/` | Entradas del blog (`AAAA-MM-DD-titulo.md`) |
| `_investigaciones/` | Una ficha por artículo, entrevista o capítulo |
| `_libros/` | Una ficha por libro (portada y PDF) |
| `_integrantes/` | Una ficha por integrante (campo `orden`) |
| `_eventos/`, `_difusion/` | Eventos y material audiovisual |
| `_data/` | Inicio, contacto y menú |
| `assets/css/style.css` | Diseño (marfil, negro, rojo; EB Garamond e Inter Tight) |
| `.pages.yml` | Formularios del editor Pages CMS |

## Dominio propio

Para usar `criticainmanente.org`: agregar un archivo `CNAME` con el dominio, cambiar `url` en `_config.yml` y configurar el DNS del registrador según la guía de GitHub Pages.

## Estadísticas de visitas

El sitio cuenta visitas con [GoatCounter](https://www.goatcounter.com), un servicio gratuito, sin cookies y respetuoso de la privacidad, que no requiere aviso de cookies. El panel está en https://criticainmanente.goatcounter.com. El código de la cuenta se configura en `_config.yml` (`goatcounter:`).
