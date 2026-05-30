# muiMaterial 0.2.0 (unreleased)

## New features

- new `*.shinyInput()` family of Shiny-wired input wrappers covering the most
  commonly bound components (Autocomplete, Button, Checkbox, Dialog, Drawer,
  IconButton, Input, Fab, FormControlLabel, LoadingButton, Menu, MenuItem,
  Modal, OutlinedInput, Pagination, Radio, RadioGroup, Rating, Select, Slider,
  Snackbar, StepButton, Switch, Tab, TabContext, TabList, TabPanel, Tabs,
  TextField, ToggleButton, ToggleButtonGroup) and matching `update*.shinyInput()`
  helpers.
- new `*.triggerId()` family for binding overlay components to an existing DOM
  element by id, with no server logic required: `Dialog.triggerId()`,
  `Drawer.triggerId()`, `Menu.triggerId()`, `Modal.triggerId()`,
  `Popover.triggerId()`, `SwipeableDrawer.triggerId()`.
- `Autocomplete.shinyInput()` now validates its arguments and warns on
  conflicting `renderInput` / `inputProps` / child element combinations.
- new vignettes and gallery examples; the `mui-template-dashboard` example is
  available as a live deployment on Posit Connect.

## Documentation

- per-component reference pages and runnable `@examplesIf interactive()`
  blocks added to the headline components (`Button.shinyInput`,
  `TextField.shinyInput`, `Slider.shinyInput`, `Autocomplete.shinyInput`,
  `Dialog.triggerId`, `Drawer.triggerId`, `ThemeProvider`, `muiMaterialPage`).
- new "AI-Assisted Development" and per-component vignettes.

## Packaging

- bundle and metadata updated for an initial CRAN release:
  - MUI Inc. and the Emotion team added to `Authors@R` as copyright holders of
    the bundled JavaScript.
  - new top-level `LICENSE.note` documenting third-party MIT-licensed code
    shipped in `inst/www/muiMaterial/`.
  - README now states that `muiMaterial` is an independent community wrapper,
    not affiliated with or endorsed by MUI Inc.
- minimum R version bumped to R (>= 4.1) to match `shiny.react` and modern
  Shiny.
- `@mui/material` updated to 9.0.0; `@mui/lab` tracks the upstream
  9.0.0-beta.2 release (Material UI Lab is published as a beta channel
  upstream — see https://mui.com/material-ui/about-the-lab/).

## Internal

- improved JS bundling pipeline (webpack 5, exact-version pins, automatic
  third-party license extraction via `license-webpack-plugin`).
- `muiMaterial` S3 class with a `print()` method now applied to all components
  for browsable preview in the R console.
- substantial internal refactor of `R/components.R`, `R/inputs.R` and the
  Material UI Lab components.

# muiMaterial 0.1.3

- BREAKING CHANGE in `muiMaterialPage()`:
    - remove `materialSymbols` argument.
    - add new arguments to access Google Material Icons for use with `Icon()`.
    - rename `addFontRoboto` to `useFontRoboto`.
- add `triggerId` functions for managing React internal states: `Drawer.triggerId()`, `Menu.triggerId()`, `SwipeableDrawer.triggerId()`.
- add `muiMaterial` S3 class to all components with a `print()` method for browsable preview.
- fix Timeline components sourced from `@mui/lab`.
- fix Tab components (`TabContext`, `TabList`, `TabPanel`) sourced from `@mui/lab`.
- move `@mui/lab` component code from `lab.R` into `components.R` and `inputs.R`.
- update `mui-template-dashboard` example to use new R functions.
- add live Shiny app examples deployed on Posit Connect.
- refactor tests to use `inherits()` instead of `class()` for shiny.tag checks.
- Update @mui/material and @mui/lab dependencies to their latest version
- improve documentation

# muiMaterial 0.1.2

- improve examples
- `muiMaterialPage()` gives access to Google icons (symbols) and Roboto font.
- export `muiMaterialDependency()`
- improve internal file structure for ThemeProvider and muiMaterialDependency.

# muiMaterial 0.1.0

- initial commit
