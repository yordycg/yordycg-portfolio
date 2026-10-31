import { mkdir } from "node:fs/promises";
import { resolve } from "node:path";
import { chromium } from "playwright";
import sharp from "sharp";
import { startServer } from "./serve.mjs";

const root = resolve(".");
const outputDir = resolve(root, "docs/screenshots");
const local = await startServer({ port: 0 });
const browser = await chromium.launch();

await mkdir(outputDir, { recursive: true });

for (const [name, viewport] of [
  ["home-desktop", { width: 1440, height: 900 }],
  ["home-mobile", { width: 375, height: 812 }],
]) {
  const context = await browser.newContext({ viewport });
  const page = await context.newPage();
  await page.goto(local.url, { waitUntil: "networkidle" });
  const png = await page.screenshot({ type: "png" });
  await sharp(png).webp({ quality: 82 }).toFile(resolve(outputDir, `${name}.webp`));
  await context.close();
  console.log(`Screenshot: docs/screenshots/${name}.webp`);
}

await browser.close();
await local.close();
