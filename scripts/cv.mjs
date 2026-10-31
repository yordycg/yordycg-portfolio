import { mkdir } from "node:fs/promises";
import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";
import { pathToFileURL } from "node:url";
import { chromium } from "playwright";

const root = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const source = resolve(root, "docs/cv/index.html");
const output = resolve(root, "src/assets/yordy-carmona-cv.pdf");

await mkdir(dirname(output), { recursive: true });

const browser = await chromium.launch();
const page = await browser.newPage();

await page.goto(pathToFileURL(source).href, { waitUntil: "load" });
await page.evaluate(() => document.fonts.ready);
await page.emulateMedia({ media: "print" });
await page.pdf({
  path: output,
  format: "A4",
  printBackground: true,
  preferCSSPageSize: true,
  tagged: true,
  outline: true,
});

await browser.close();
console.log(`CV generado: ${output}`);
