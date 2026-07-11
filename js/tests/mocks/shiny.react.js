// Minimal stand-in for the shiny.react runtime (aliased in
// vitest.config.mjs). The tests exercise the wrapper components' own logic;
// the adapter wiring (Shiny input registration, debouncing) belongs to
// shiny.react and is not under test, so the adapters are identity wrappers.
export const ButtonAdapter = (Component) => Component;
export const InputAdapter = (Component) => Component;
export const debounce = () => {};
