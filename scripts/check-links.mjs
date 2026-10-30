import { LinkChecker } from "linkinator";

const checker = new LinkChecker();
const result = await checker.check({
  path: "./src",
  recurse: true,
  checkFragments: true,
  checkCss: true,
  linksToSkip: [
    "^https?://(?!127\\.0\\.0\\.1|localhost)",
    "^mailto:",
    "^tel:",
  ],
});

const broken = result.links.filter((link) => link.state === "BROKEN");
console.log(`Links comprobados: ${result.links.length} · roto(s): ${broken.length}`);

for (const link of broken) {
  console.error(`- ${link.status ?? "?"} ${link.url}`);
  if (link.parent) console.error(`  desde ${link.parent}`);
}

if (!result.passed) process.exit(1);
