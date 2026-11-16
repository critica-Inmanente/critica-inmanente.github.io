# Versión en inglés con direcciones propias (/en/...).
#
# Para cada página HTML y cada documento publicado (perfiles, fichas, entradas) crea una copia
# en /en/<misma ruta> con `lang: en`. Las plantillas eligen el texto según page.lang
# (_includes/t.html y tb.html) y enlazan entre versiones con hreflang (_includes/seo.html).
# Ambas versiones salen de los mismos campos: una edición en Pages CMS actualiza las dos.
#
# Requiere compilar con GitHub Actions (.github/workflows/pages.yml): la compilación clásica
# de GitHub Pages no ejecuta plugins propios.
module CriticaInmanente
  class VersionEn < Jekyll::Generator
    safe true
    priority :low

    PREFIJO = "/en".freeze

    def generate(site)
      nuevas = []

      site.pages.dup.each do |page|
        next unless page.html?
        next if page.data["lang"] == "en" || page.url == "/404.html" || page.data["sin_ingles"]
        nuevas << copia(site, page.name, page.content, page.data, page.url, nil)
      end

      site.collections.each_value do |coleccion|
        next unless coleccion.write?
        coleccion.docs.each do |doc|
          next if doc.data["sin_ingles"]
          # Entradas: solo si tienen texto en inglés (no publicar traducciones vacías).
          next if coleccion.label == "posts" && doc.data["body_en"].to_s.strip.empty?
          nombre = "#{doc.basename_without_ext}#{doc.extname}"
          nuevas << copia(site, nombre, doc.content, doc.data, doc.url, coleccion.label)
        end
      end

      site.pages.concat(nuevas)
    end

    private

    def copia(site, nombre, contenido, datos, url_es, coleccion)
      url_en = PREFIJO + url_es
      datos["en_url"] = url_en # la versión en español sabe cuál es su equivalente
      pagina = Jekyll::PageWithoutAFile.new(site, site.source, File.dirname(url_en), nombre)
      pagina.content = contenido
      pagina.data.merge!(datos.reject { |k, _| %w(permalink en_url excerpt).include?(k) })
      pagina.data["permalink"] = url_en
      pagina.data["lang"] = "en"
      pagina.data["es_url"] = url_es
      pagina.data["collection"] = coleccion if coleccion
      pagina
    end
  end

  # Filtro lurl: como relative_url, pero en páginas en inglés antepone /en a las rutas internas
  # (no a /assets ni al feed).
  module LangUrl
    def lurl(input)
      url = input.to_s
      page = @context.registers[:page]
      lang = page.respond_to?(:[]) ? page["lang"] : nil
      if lang == "en" && url.start_with?("/") && !url.start_with?("/assets/", "/feed", "/en/") && url != "/en"
        url = "/en" + url
      end
      "#{@context.registers[:site].config["baseurl"]}#{url}"
    end
  end
end

Liquid::Template.register_filter(CriticaInmanente::LangUrl)
