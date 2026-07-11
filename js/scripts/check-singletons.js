#!/usr/bin/env node
// Guard the singleton invariant behind js/src/index.js.
//
// The modules exported on window.jsmodule (@mui/private-theming,
// @mui/styled-engine, @emotion/cache, ...) hold shared mutable state — the
// React ThemeContext and the emotion style cache. Companion packages
// externalize against this single instance, and index.js warns at runtime
// when ANOTHER bundle registered a different copy. What that warning cannot
// catch is a duplicate INSIDE this bundle: if yarn ever resolves two versions
// of one of these packages (e.g. after a partial @mui upgrade whose
// transitive ranges no longer dedupe onto our exact pins), the bundle ships
// two ThemeContexts and ThemeProvider silently stops reaching half the tree.
//
// This script fails the build when yarn.lock resolves more than one version
// of any singleton package. Fix by aligning the pins in package.json with the
// transitive ranges (and re-running yarn) so everything dedupes to one copy.
'use strict';

const fs = require('fs');
const path = require('path');

// Keep in sync with `sharedModules` in src/index.js. react-is is included
// because `resolutions` pins it for the same one-copy reason.
const SINGLETONS = [
  '@mui/material',
  '@mui/system',
  '@mui/utils',
  '@mui/lab',
  '@mui/private-theming',
  '@mui/styled-engine',
  '@emotion/react',
  '@emotion/styled',
  '@emotion/cache',
  'react-is',
];

const lockfile = fs.readFileSync(path.join(__dirname, '..', 'yarn.lock'), 'utf8');

// yarn.lock v1: each entry starts at column 0 with a comma-separated list of
// (optionally quoted) "name@range" descriptors ending in ":", followed by an
// indented `version "x.y.z"` line.
const entries = lockfile.split(/\n(?=[^\s#])/);

const resolvedVersions = (name) => {
  const versions = new Set();
  for (const entry of entries) {
    const newline = entry.indexOf('\n');
    if (newline === -1) continue;
    const header = entry.slice(0, newline);
    const matchesName = header.split(',').some((descriptor) => {
      const desc = descriptor.trim().replace(/^"/, '');
      return desc.startsWith(`${name}@`);
    });
    if (!matchesName) continue;
    const version = entry.match(/\n {2}version "([^"]+)"/);
    if (version) versions.add(version[1]);
  }
  return versions;
};

let failed = false;
for (const name of SINGLETONS) {
  const versions = resolvedVersions(name);
  if (versions.size === 0) {
    console.error(`check-singletons: ${name} not found in yarn.lock — update the SINGLETONS list?`);
    failed = true;
  } else if (versions.size > 1) {
    console.error(
      `check-singletons: ${name} resolves to ${versions.size} versions ` +
      `(${[...versions].sort().join(', ')}). The bundle would carry duplicate ` +
      'copies of a shared-state module; align the package.json pin with the ' +
      'transitive ranges so yarn dedupes to a single copy.'
    );
    failed = true;
  }
}

if (failed) {
  process.exit(1);
}
console.log(`check-singletons: OK — one resolved copy of each of ${SINGLETONS.length} singleton packages.`);
