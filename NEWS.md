# muiMaterial (development version)

## New features

- new `ListItemButton.shinyInput()` / `updateListItemButton.shinyInput()`:
  clickable list rows now report a click counter to `input[[inputId]]`, like
  `Button.shinyInput()`. (The JS adapter existed but was not exposed in R.)
- `.shinyInput()` functions now warn when a reserved prop is supplied
  (`checked`/`onChange` on value inputs, `onClick` on action inputs): a
  caller-supplied reserved prop silently overrides the input wiring and
  `input[[inputId]]` stops updating. Deliberate overrides (an advanced
  pattern) can silence the warning with
  `options(muiMaterial.warnReservedProps = FALSE)`.

## Breaking changes

- `Drawer.triggerId()` and `SwipeableDrawer.triggerId()`: the `sx` prop now
  styles the Drawer **root**, consistent with every other component (it was
  previously merged into the drawer paper). Size the paper with the `width`
  argument or style it via `slotProps = list(paper = list(sx = ...))`.
  Root-level patterns such as responsive `display` and
  `"& .MuiDrawer-paper"` selectors now work as they do in the MUI docs.

## Improvements

- `.triggerId` wrappers now bind their trigger with a delegated
  document-level listener. Triggers rendered or replaced later by Shiny
  (`renderUI()`/`uiOutput()`) keep working; previously the binding was lost
  when the trigger element was re-rendered.
- the delegated trigger listener runs in the capture phase, so a trigger
  inside a component that calls `event.stopPropagation()` still opens its
  overlay.
- the bespoke JSX wrappers (`.triggerId` overlays, `.static` tabs,
  Autocomplete) are now covered by a JS test suite (`yarn --cwd js test`,
  vitest + Testing Library), run in CI alongside the bundle-drift check.
- the JS build now fails if `yarn.lock` resolves more than one copy of any
  of the shared singleton modules (`@mui/private-theming`,
  `@mui/styled-engine`, `@emotion/cache`, ...). A duplicate copy inside the
  bundle would silently split the theme context — the failure mode the
  `window.jsmodule` runtime warning cannot detect.
- `.triggerId` wrappers compose caller-supplied callbacks (`onClose`, and
  `onClick`/`onOpen` where relevant) with their own state handling instead of
  letting them override it; the wrapper-owned `open`/`anchorEl` props can no
  longer be accidentally overridden from R.
- `muiMaterialPage()` returns a `tagList()` with a hoisted `tags$head()`
  instead of nesting a full `<html>`/`<body>` document inside the Shiny page
  body (invalid HTML that relied on browser tag-merging). The body margin is
  now applied with a `body { ... }` CSS rule.
- `muiMaterialDependency()` is now computed once per session instead of
  reading package metadata from disk for every element created.
- `muiMaterialExample()` errors with the list of available examples when
  asked for an unknown example name.
- the JS bundle warns at load time if the runtime React provided by
  shiny.react is not React 18 (the only supported major), and when it
  overwrites `window.jsmodule` registrations made by another package with a
  different copy of MUI/emotion.
- action `.shinyInput` docs now state that `onClick` is a reserved prop
  (a caller-supplied `onClick` replaces the click-counter wiring).

## Dependencies

- declare and pin the directly-imported `@mui/system`, `@mui/utils`,
  `@mui/private-theming`, `@mui/styled-engine` and `@emotion/cache` in
  `js/package.json` (previously resolved implicitly through
  `@mui/material`'s dependency tree).

## Bug fixes

- `Drawer.triggerId()` / `SwipeableDrawer.triggerId()`: a caller-supplied
  `slotProps = list(paper = list(sx = ...))` given as a `JS()` function (or
  an sx array) was silently dropped by the paper merge; sx values now
  compose via MUI's array form. A caller-supplied `slotProps.paper.onClick`
  no longer replaces the close-on-link-click handler — the two are composed
  (wrapper first, then caller).
- `Autocomplete` / `Autocomplete.shinyInput()`: a `slotProps` on the child
  input element (e.g. `TextField(slotProps = list(input = list(startAdornment
  = ...)))`) was clobbered by the wiring MUI v9 passes through
  `renderInput` params; the two are now merged slot-by-slot (child wins per
  key, wiring preserved).
- `TransferList` example: use the MUI v9 Grid API (`size = list(xs = 5)`)
  instead of the removed v5 `item`/`xs` props, give `lapply()`-generated rows
  a stable `key`, and stop passing the reserved `checked` prop to
  `Checkbox.shinyInput()` (the rows now use a plain controlled `Checkbox`).
- `mui-template-dashboard` example: fix a malformed `sx` value in the mobile
  side menu (leftover JSX pasted inside an R string).
- `Checkbox` example: use the `value` argument instead of the reserved
  `checked` prop.

# muiMaterial 0.2.2

## Dependencies

- update the bundled 'Material UI' libraries to their latest releases:
  `@mui/material` 9.0.0 -> 9.1.2 and `@mui/lab` 9.0.0-beta.2 -> 9.0.0-beta.5.
- refresh development and CI tooling via Renovate: Babel 8, Node 24 in CI, and
  the `actions/checkout`, `actions/setup-node`, `actions/upload-artifact` and
  `codecov/codecov-action` GitHub Actions.

# muiMaterial 0.2.1

## New features

- expose the MUI theming/styling singletons (`@mui/private-theming`,
  `@mui/styled-engine`) and the emotion cache (`@emotion/cache`) on
  `window.jsmodule`. Companion packages (e.g. muiCharts, which bundles
  `@mui/x-charts`) can now externalize against this single instance, so a
  `ThemeProvider()` rendered by muiMaterial reaches the bundled charts.
  Previously each bundle carried its own `ThemeContext` and emotion cache, so
  theming and `sx` styling were silently ignored across package boundaries.

# muiMaterial 0.2.0

## Breaking changes

- `TabContext.static()` now follows the React `<input>` convention for tab
  state ownership. Pass `defaultValue` for *uncontrolled* tabs (the wrapper owns
  and updates the active tab) and `value` for *controlled* tabs (you own it; the
  value is honored on every render). The previous `value` argument behaved as an
  uncontrolled seed, so existing code should rename `value` to `defaultValue`:

  ```r
  # before
  TabContext.static(value = "one", ...)
  # after
  TabContext.static(defaultValue = "one", ...)
  ```

  Code that left `value` unchanged will become controlled and freeze on the
  first tab (clicks fire but the wrapper no longer updates state) unless an
  `onChange` writes the value back.

- removed the deprecated `GridLegacy()`, `PigmentContainer()`, `PigmentGrid()`
  and `PigmentStack()` wrappers. These mapped to MUI APIs that are no longer
  part of the supported `@mui/material` surface; use `Grid()` (and `Stack()` /
  `Container()`) instead.

## New features

- `TabContext.static()` gains a *controlled* mode: pass `value` together with a
  writer that updates it (an `onChange` on `TabList.static()` / `TabContext.static()`,
  or `Tab(href = ...)` links that change the URL) to make an external source the
  source of truth. This enables URL-bound, bookmarkable tabs via
  `reactRouter::useParams(as = "value", ...)`, cross-component tab
  synchronization, and programmatic tab activation. See the Tabs vignette.
- `TabContext.static()` now emits a development console warning when it is used
  in controlled mode (`value` supplied) without any `onChange` to move the
  active tab -- the same guidance React gives for a controlled `<input>` with no
  handler -- pointing you to either add an `onChange` or switch to `defaultValue`.

- new `*.shinyInput()` family of Shiny-wired input wrappers covering the most
  commonly bound components (Autocomplete, BottomNavigation, Button, Checkbox,
  Dialog, Drawer, IconButton, Input, FilledInput, Fab, FormControlLabel,
  LoadingButton, Menu, MenuItem, Modal, NativeSelect, OutlinedInput, Pagination,
  Radio, RadioGroup, Rating, Select, Slider, Snackbar, StepButton, Switch,
  TabContext, TabList, TabPanel, Tabs, TextField, ToggleButton,
  ToggleButtonGroup) and matching `update*.shinyInput()` helpers.
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
