# Migración a dominio propio

Checklist para ejecutar cuando exista un dominio (objetivo 2027–2028).
No añadir `CNAME` ni cambiar DNS hasta tener el dominio comprado.

## 1. Antes de tocar el sitio

- [ ] Elegir el dominio y el proveedor de DNS.
- [ ] Decidir si será `dominio.com`, `www.dominio.com` o ambos.
- [ ] Configurar los registros DNS que indique GitHub Pages.
- [ ] Añadir el dominio en **Settings → Pages → Custom domain**.
- [ ] Activar **Enforce HTTPS**.
- [ ] Esperar la verificación DNS y el certificado TLS.

## 2. Archivos a actualizar

Sustituir la URL base actual:

```text
https://yordycg.github.io/yordycg-portfolio/
```

Por el dominio nuevo, por ejemplo:

```text
https://dominio.com/
```

Archivos y valores:

- [ ] `src/index.html`
  - `canonical`
  - `og:url`
  - `og:image`
  - `twitter:image`
  - JSON-LD: `@id`, `url` e `image`
- [ ] `src/404.html`
  - `<base href="...">`
- [ ] `src/sitemap.xml`
  - `loc`
- [ ] `src/robots.txt`
  - `Sitemap`
- [ ] `README.md`
  - URL pública
- [ ] GitHub → About → Website
- [ ] LinkedIn → sitio web del perfil
- [ ] Search Console: añadir propiedad y enviar el sitemap nuevo

## 3. Verificación

- [ ] `https://dominio.com/` responde 200.
- [ ] `https://www.dominio.com/` redirige correctamente.
- [ ] `http://dominio.com/` redirige a HTTPS.
- [ ] `https://dominio.com/robots.txt` y `/sitemap.xml` responden.
- [ ] `canonical` y metadatos OG apuntan al dominio nuevo.
- [ ] JSON-LD válido con las URLs nuevas.
- [ ] Una URL inexistente devuelve el `404.html` propio.
- [ ] GitHub Pages y Lighthouse siguen en verde.
- [ ] El sitio antiguo redirige al nuevo durante el periodo de transición.

## 4. Rollback

- [ ] Conservar la configuración anterior de Pages y DNS.
- [ ] Si falla TLS o DNS, retirar el custom domain y volver a la URL de GitHub Pages.
- [ ] No borrar el sitemap antiguo hasta confirmar la indexación del nuevo.

## Nota

El `CNAME` debe contener solo el dominio, sin protocolo ni barra final:

```text
dominio.com
```
