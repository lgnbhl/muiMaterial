// jsdom gaps that MUI touches at render time.

// useMediaQuery (used by some MUI internals) needs matchMedia.
if (!window.matchMedia) {
  window.matchMedia = (query) => ({
    matches: false,
    media: query,
    onchange: null,
    addListener: () => {},
    removeListener: () => {},
    addEventListener: () => {},
    removeEventListener: () => {},
    dispatchEvent: () => false,
  });
}

// useTriggerBind builds its selector with CSS.escape.
if (typeof globalThis.CSS === 'undefined' || !globalThis.CSS.escape) {
  globalThis.CSS = {
    ...globalThis.CSS,
    escape: (value) => String(value).replace(/[^a-zA-Z0-9_-]/g, (ch) => `\\${ch}`),
  };
}
