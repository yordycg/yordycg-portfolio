import { createServer } from "node:http";
import { readFile, stat } from "node:fs/promises";
import { extname, join, resolve, sep } from "node:path";
import { fileURLToPath, pathToFileURL } from "node:url";

const ROOT = resolve(fileURLToPath(new URL("../src", import.meta.url)));
const PREFIX = "/yordycg-portfolio";

const MIME = {
  ".css": "text/css; charset=utf-8",
  ".html": "text/html; charset=utf-8",
  ".ico": "image/vnd.microsoft.icon",
  ".js": "text/javascript; charset=utf-8",
  ".json": "application/json; charset=utf-8",
  ".pdf": "application/pdf",
  ".png": "image/png",
  ".svg": "image/svg+xml",
  ".txt": "text/plain; charset=utf-8",
  ".webmanifest": "application/manifest+json; charset=utf-8",
  ".webp": "image/webp",
  ".woff2": "font/woff2",
  ".xml": "application/xml; charset=utf-8",
};

function safePath(urlPath) {
  const decoded = decodeURIComponent(urlPath);
  const withoutPrefix = decoded.startsWith(PREFIX)
    ? decoded.slice(PREFIX.length)
    : decoded;
  const pathname = withoutPrefix.endsWith("/")
    ? `${withoutPrefix}index.html`
    : withoutPrefix || "/index.html";
  const filePath = resolve(ROOT, `.${pathname}`);
  return filePath === ROOT || filePath.startsWith(`${ROOT}${sep}`)
    ? filePath
    : null;
}

async function send(res, filePath, status = 200) {
  const body = await readFile(filePath);
  res.writeHead(status, {
    "cache-control": "no-store",
    "content-type": MIME[extname(filePath)] ?? "application/octet-stream",
  });
  res.end(body);
}

async function handler(req, res) {
  if (req.method !== "GET" && req.method !== "HEAD") {
    res.writeHead(405, { allow: "GET, HEAD" });
    res.end("Method not allowed");
    return;
  }

  const { pathname } = new URL(req.url ?? "/", "http://127.0.0.1");
  let filePath = safePath(pathname);

  if (!filePath) {
    await send(res, join(ROOT, "404.html"), 404);
    return;
  }

  try {
    const info = await stat(filePath);
    if (info.isDirectory()) filePath = join(filePath, "index.html");
    await send(res, filePath);
  } catch {
    await send(res, join(ROOT, "404.html"), 404);
  }
}

export function startServer({ host = "127.0.0.1", port = 8080 } = {}) {
  const server = createServer((req, res) => {
    handler(req, res).catch((error) => {
      res.writeHead(500, { "content-type": "text/plain; charset=utf-8" });
      res.end(`Server error: ${error.message}`);
    });
  });

  return new Promise((resolveStart, rejectStart) => {
    server.once("error", rejectStart);
    server.listen(port, host, () => {
      const address = server.address();
      const actualPort = typeof address === "object" ? address.port : port;
      resolveStart({
        close: () =>
          new Promise((resolveClose) => server.close(resolveClose)),
        port: actualPort,
        server,
        url: `http://${host}:${actualPort}${PREFIX}/`,
      });
    });
  });
}

if (import.meta.url === pathToFileURL(process.argv[1] ?? "").href) {
  const port = Number(process.env.PORT ?? 8080);
  const { url } = await startServer({ port });
  console.log(`Servidor local: ${url}`);
}
