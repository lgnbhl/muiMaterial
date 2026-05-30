# Changelog

## muiMaterial 0.2.0 (unreleased)

### Breaking changes

- [`TabContext.static()`](https://felixluginbuhl.com/muiMaterial/reference/TabContext.md)
  now follows the React `<input>` convention for tab state ownership.
  Pass `defaultValue` for *uncontrolled* tabs (the wrapper owns and
  updates the active tab) and `value` for *controlled* tabs (you own it;
  the value is honored on every render). The previous `value` argument
  behaved as an uncontrolled seed, so existing code should rename
  `value` to `defaultValue`:

  ``` r

  # before
  TabContext.static(value = "one", ...)
  # after
  TabContext.static(defaultValue = "one", ...)
  ```

  Code that left `value` unchanged will become controlled and freeze on
  the first tab (clicks fire but the wrapper no longer updates state)
  unless an `onChange` writes the value back.

### New features

- [`TabContext.static()`](https://felixluginbuhl.com/muiMaterial/reference/TabContext.md)
  gains a *controlled* mode: pass `value` together with a writer that
  updates it (an `onChange` on
  [`TabList.static()`](https://felixluginbuhl.com/muiMaterial/reference/TabList.md)
  /
  [`TabContext.static()`](https://felixluginbuhl.com/muiMaterial/reference/TabContext.md),
  or `Tab(href = ...)` links that change the URL) to make an external
  source the source of truth. This enables URL-bound, bookmarkable tabs
  via `reactRouter::useParams(as = "value", ...)`, cross-component tab
  synchronization, and programmatic tab activation. See the Tabs
  vignette.

- [`TabContext.static()`](https://felixluginbuhl.com/muiMaterial/reference/TabContext.md)
  now emits a development console warning when it is used in controlled
  mode (`value` supplied) without any `onChange` to move the active tab
  – the same guidance React gives for a controlled `<input>` with no
  handler – pointing you to either add an `onChange` or switch to
  `defaultValue`.

- new `*.shinyInput()` family of Shiny-wired input wrappers covering the
  most commonly bound components (Autocomplete, Button, Checkbox,
  Dialog, Drawer, IconButton, Input, Fab, FormControlLabel,
  LoadingButton, Menu, MenuItem, Modal, OutlinedInput, Pagination,
  Radio, RadioGroup, Rating, Select, Slider, Snackbar, StepButton,
  Switch, Tab, TabContext, TabList, TabPanel, Tabs, TextField,
  ToggleButton, ToggleButtonGroup) and matching `update*.shinyInput()`
  helpers.

- new `*.triggerId()` family for binding overlay components to an
  existing DOM element by id, with no server logic required:
  [`Dialog.triggerId()`](https://felixluginbuhl.com/muiMaterial/reference/Dialog.triggerId.md),
  [`Drawer.triggerId()`](https://felixluginbuhl.com/muiMaterial/reference/Drawer.triggerId.md),
  [`Menu.triggerId()`](https://felixluginbuhl.com/muiMaterial/reference/Menu.triggerId.md),
  [`Modal.triggerId()`](https://felixluginbuhl.com/muiMaterial/reference/Modal.triggerId.md),
  [`Popover.triggerId()`](https://felixluginbuhl.com/muiMaterial/reference/Popover.triggerId.md),
  [`SwipeableDrawer.triggerId()`](https://felixluginbuhl.com/muiMaterial/reference/SwipeableDrawer.triggerId.md).

- [`Autocomplete.shinyInput()`](https://felixluginbuhl.com/muiMaterial/reference/Autocomplete.md)
  now validates its arguments and warns on conflicting `renderInput` /
  `inputProps` / child element combinations.

- new vignettes and gallery examples; the `mui-template-dashboard`
  example is available as a live deployment on Posit Connect.

### Documentation

- per-component reference pages and runnable `@examplesIf interactive()`
  blocks added to the headline components (`Button.shinyInput`,
  `TextField.shinyInput`, `Slider.shinyInput`,
  `Autocomplete.shinyInput`, `Dialog.triggerId`, `Drawer.triggerId`,
  `ThemeProvider`, `muiMaterialPage`).
- new “AI-Assisted Development” and per-component vignettes.

### Packaging

- bundle and metadata updated for an initial CRAN release:
  - MUI Inc. and the Emotion team added to `Authors@R` as copyright
    holders of the bundled JavaScript.
  - new top-level `LICENSE.note` documenting third-party MIT-licensed
    code shipped in `inst/www/muiMaterial/`.
  - README now states that `muiMaterial` is an independent community
    wrapper, not affiliated with or endorsed by MUI Inc.
- minimum R version bumped to R (\>= 4.1) to match `shiny.react` and
  modern Shiny.
- `@mui/material` updated to 9.0.0; `@mui/lab` tracks the upstream
  9.0.0-beta.2 release (Material UI Lab is published as a beta channel
  upstream — see <https://mui.com/material-ui/about-the-lab/>).

### Internal

- improved JS bundling pipeline (webpack 5, exact-version pins,
  automatic third-party license extraction via
  `license-webpack-plugin`).
- `muiMaterial` S3 class with a
  [`print()`](https://rdrr.io/r/base/print.html) method now applied to
  all components for browsable preview in the R console.
- substantial internal refactor of `R/components.R`, `R/inputs.R` and
  the Material UI Lab components.

## muiMaterial 0.1.3

CRAN release: 2026-03-15

- BREAKING CHANGE in
  [`muiMaterialPage()`](https://felixluginbuhl.com/muiMaterial/reference/muiMaterialPage.md):
  - remove `materialSymbols` argument.
  - add new arguments to access Google Material Icons for use with
    [`Icon()`](https://felixluginbuhl.com/muiMaterial/reference/Icon.md).
  - rename `addFontRoboto` to `useFontRoboto`.
- add `triggerId` functions for managing React internal states:
  [`Drawer.triggerId()`](https://felixluginbuhl.com/muiMaterial/reference/Drawer.triggerId.md),
  [`Menu.triggerId()`](https://felixluginbuhl.com/muiMaterial/reference/Menu.triggerId.md),
  [`SwipeableDrawer.triggerId()`](https://felixluginbuhl.com/muiMaterial/reference/SwipeableDrawer.triggerId.md).
- add `muiMaterial` S3 class to all components with a
  [`print()`](https://rdrr.io/r/base/print.html) method for browsable
  preview.
- fix Timeline components sourced from `@mui/lab`.
- fix Tab components (`TabContext`, `TabList`, `TabPanel`) sourced from
  `@mui/lab`.
- move `@mui/lab` component code from `lab.R` into `components.R` and
  `inputs.R`.
- update `mui-template-dashboard` example to use new R functions.
- add live Shiny app examples deployed on Posit Connect.
- refactor tests to use
  [`inherits()`](https://rdrr.io/r/base/class.html) instead of
  [`class()`](https://rdrr.io/r/base/class.html) for shiny.tag checks.
- Update [@mui](https://github.com/mui)/material and
  [@mui](https://github.com/mui)/lab dependencies to their latest
  version
- improve documentation

## muiMaterial 0.1.2

CRAN release: 2026-01-26

- improve examples
- [`muiMaterialPage()`](https://felixluginbuhl.com/muiMaterial/reference/muiMaterialPage.md)
  gives access to Google icons (symbols) and Roboto font.
- export
  [`muiMaterialDependency()`](https://felixluginbuhl.com/muiMaterial/reference/muiMaterialDependency.md)
- improve internal file structure for ThemeProvider and
  muiMaterialDependency.

## muiMaterial 0.1.0

- initial commit
