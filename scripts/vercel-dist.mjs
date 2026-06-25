import { cp, mkdir, rm } from 'node:fs/promises';
import { existsSync } from 'node:fs';
import path from 'node:path';

const root = process.cwd();
const publicDir = path.join(root, 'public');
const distDir = path.join(root, 'dist');
const publicStorage = path.join(publicDir, 'storage');

if (!existsSync(publicDir)) {
  throw new Error('public directory was not found after build');
}

await rm(distDir, { recursive: true, force: true });
await mkdir(distDir, { recursive: true });
await cp(publicDir, distDir, {
  recursive: true,
  filter: (source) => source !== publicStorage && !source.startsWith(`${publicStorage}${path.sep}`),
});
