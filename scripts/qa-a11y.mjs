import { chromium } from "playwright";
import { AxeBuilder } from "@axe-core/playwright";
import { startServer } from "./serve.mjs";

const local = await startServer({ port: 0 });
const browser = await chromium.launch();
let failed = false;

const pages = [
  { name: "index", path: "" },
  { name: "404", path: "no-existe" },
];

try {
  for (const { name, path } of pages) {
    for (const width of [1440, 320]) {
      const context = await browser.newContext({
        viewport: { width, height: 800 },
      });
      const page = await context.newPage();
      const errors = [];
      page.on("pageerror", (error) => errors.push(String(error)));

      const response = await page.goto(`${local.url}${path}`, {
        waitUntil: "networkidle",
      });
      const results = await new AxeBuilder({ page })
        .withTags(["wcag2a", "wcag2aa", "wcag21a", "wcag21aa"])
        .analyze();

      const label = `${name} ${width}px`;
      console.log(
        `${label}: status=${response?.status() ?? "?"} axe=${results.violations.length} pageErrors=${errors.length}`,
      );

      for (const violation of results.violations) {
        failed = true;
        console.error(`- ${violation.id} (${violation.impact}): ${violation.help}`);
        for (const node of violation.nodes.slice(0, 3)) {
          console.error(`  ${node.target.join(" ")}`);
        }
      }
      for (const error of errors) {
        failed = true;
        console.error(`- page error: ${error}`);
      }

      await context.close();
    }
  }
} finally {
  await browser.close();
  await local.close();
}

if (failed) process.exit(1);
