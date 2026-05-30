# Contributing to muiMaterial

Thanks for your interest in improving `muiMaterial`! This document
covers the most common ways to contribute.

## Reporting bugs and requesting features

Please open an issue on
[GitHub](https://github.com/lgnbhl/muiMaterial/issues). For bugs,
include a minimal reproducible example (a small `shinyApp(...)` block is
ideal), the output of
[`sessionInfo()`](https://rdrr.io/r/utils/sessionInfo.html), and the
package versions of `muiMaterial`, `shiny` and `shiny.react`.

## Development setup

``` r
# fork the repo, then:
git clone https://github.com/<your-user>/muiMaterial
cd muiMaterial
```

The R side has no compile step. Install dev dependencies in R and build
the package:

``` r

install.packages(c("devtools", "roxygen2", "testthat", "checkmate"))
devtools::install_deps(dependencies = TRUE)
devtools::document()
devtools::test()
devtools::check()
```

## Rebuilding the bundled JavaScript

The minified bundle shipped in `inst/www/muiMaterial/` is produced from
sources in `js/`. To rebuild it:

``` bash
# Install the JavaScript dependencies
yarn --cwd js

# Bundle the JavaScript code into a single file
yarn --cwd js build

# Generate the NAMESPACE file and documentation
Rscript -e 'devtools::document()'

# Install the package
Rscript -e 'devtools::install()'
```

The build output is written directly into `inst/www/muiMaterial/`. The
webpack pipeline pins exact MUI versions (`js/package.json`) and emits
third-party license attributions to
`inst/www/muiMaterial/mui-material.js.LICENSE.txt` via
`license-webpack-plugin`. Please commit both files together so the
licence file stays in sync with the bundle.

## Adding a new component wrapper

`muiMaterial` mirrors the upstream MUI API by design. To add a new
component:

1.  Add an entry to `inst/helpers/generate-components-docs-tests.R` (the
    canonical list).
2.  Re-run the helper script to regenerate `R/components.R`,
    `R/documentation.R` and the matching `tests/testthat/test-<Name>.R`
    stubs.
3.  If the component is meant to be Shiny-wired, add a
    `<Component>.shinyInput()` and `update<Component>.shinyInput()` pair
    to `R/inputs.R`.
4.  Run `devtools::document()` and `devtools::test()`.

## Naming convention

- `Component()` — plain MUI React element, PascalCase.
- `Component.shinyInput()` / `updateComponent.shinyInput()` —
  Shiny-wired variants that expose `input[[inputId]]`.
- `Component.triggerId()` — overlay components bound to an existing DOM
  element by id, with no server logic required.

See
[`?muiMaterial`](https://felixluginbuhl.com/muiMaterial/reference/muiMaterial-package.md)
for the full rationale.

## Style

- Follow the existing code style; the project uses base R conventions
  plus `checkmate` for argument validation.
- New exported functions need roxygen documentation and at least one
  test, ideally with a runnable `@examplesIf interactive()` block.

## Pull requests

- One logical change per PR.
- Update `NEWS.md` under the unreleased section at the top of the file.
- Make sure `devtools::check()` is clean (0 errors, 0 warnings, at most
  the expected installed-size NOTE).

By contributing you agree that your contributions will be licensed under
the MIT License of this project.
