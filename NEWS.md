# muiMaterial 0.2.0

- CRAN release.
- new R functions with `.shinyInput` and `.triggerId`.
- add more examples and vignettes.
- new examples.
- improved JS code and a lot of code refactoring.

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
