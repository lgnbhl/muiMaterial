import { fileURLToPath } from 'node:url';
import { defineConfig } from 'vitest/config';

const local = (p) => fileURLToPath(new URL(p, import.meta.url));

export default defineConfig({
  // No explicit JSX option: the oxc transformer used by Vite/Vitest defaults
  // to the automatic JSX runtime, matching the production .babelrc.
  resolve: {
    alias: {
      // In the real bundle this resolves to the shiny.react runtime via
      // webpack externals; tests exercise the wrappers' own logic, so a
      // minimal stand-in is enough (see the mock for what it provides).
      '@/shiny.react': local('tests/mocks/shiny.react.js'),
    },
  },
  test: {
    environment: 'jsdom',
    globals: true, // lets @testing-library/react register its auto-cleanup
    setupFiles: [local('tests/setup.js')],
    include: ['tests/**/*.test.{js,jsx}'],
  },
});
