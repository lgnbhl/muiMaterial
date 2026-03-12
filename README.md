
<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/muiMaterial)](https://CRAN.R-project.org/package=muiMaterial)
[![R-CMD-check](https://github.com/lgnbhl/muiMaterial/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/lgnbhl/muiMaterial/actions/workflows/R-CMD-check.yaml)
[![](https://img.shields.io/badge/@mui/material-%5E7.3.7-blue.svg)](https://mui.com/material-ui/getting-started/)
[![](https://img.shields.io/badge/react-18.3.1-blue.svg)](https://mui.com/material-ui/getting-started/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Follow-E4405F?style=social&logo=linkedin)](https://www.linkedin.com/in/FelixLuginbuhl)
<!-- badges: end -->

# muiMaterial <img src="man/figures/logo.png" align="right" height="138" />

`muiMaterial` brings [Material
UI](https://mui.com/material-ui/getting-started/), the world’s most
popular React UI framework, to R and Shiny.

## Why muiMaterial?

### Go beyond Bootstrap

If Shiny apps look all the same, it is because most use Bootstrap.
`muiMaterial` replaces it with Material UI’s vast library of components,
giving you fully customized dashboards and websites in R.

Launch a basic dashboard (live
[here](https://lgnbhl-muimaterial-simple-dashboard.share.connect.posit.cloud)):

``` r
muiMaterial::muiMaterialExample("dashboard-simple")
```

Or the R replica of the official MUI dashboard template (live
[here](https://lgnbhl-muimaterial-mui-template-dashboard.share.connect.posit.cloud/)):

``` r
muiMaterial::muiMaterialExample("mui-template-dashboard")
```

<a href="https://lgnbhl-muimaterial-mui-template-dashboard.share.connect.posit.cloud/" target="_blank"><img src="man/figures/mui-template-dashboard-screenshot.png" alt="MUI Dashboard template in Shiny" width="100%" /></a>

### Built for AI

AI tools like Claude, ChatGPT, or GitHub Copilot have been trained on
enormous amounts of MUI code. Each MUI component maps directly to an R
function — React’s `<Button variant="contained" />` becomes
`Button(variant = "contained")` in R. Just ask an AI to generate MUI
code and adapt it to R. No React or CSS knowledge needed.

Learn more in the [AI-Assisted
Development](https://felixluginbuhl.com/muiMaterial/articles/ai-assisted-development.html)
vignette.

### Works with Quarto

`muiMaterial` is not limited to Shiny — you can also use Material UI
components in [Quarto](https://quarto.org/) documents for rich,
interactive reports and presentations.

### Flexible navigation

Unlike Bootstrap-based packages (`bslib`, `bs4Dash`) that lock you into
predefined layouts, `muiMaterial` lets you structure your app however
you want. Combine it with
[reactRouter](https://felixluginbuhl.com/reactRouter/) to build
multi-page websites with [client-side
routing](https://felixluginbuhl.com/muiMaterial/articles/routing.html).

### Rich ecosystem

Extend functionality with companion R packages:

- [muiTreeView](https://felixluginbuhl.com/muiTreeView/) - Interactive
  tree navigation
- muiDataGrid (COMING SOON) - Professional data tables with filtering,
  sorting, and inline editing
- muiCharts (COMING SOON) - Beautiful, responsive charts
- muiDateTimePickers (COMING SOON) - UI components for selecting dates,
  times, and ranges

## Quick start

Install the stable version from CRAN:

``` r
install.packages("muiMaterial")
```

Or install the development version from GitHub:

``` r
pak::pak("lgnbhl/muiMaterial")
```

``` r
library(shiny)
library(muiMaterial)

ui <- muiMaterialPage(
  CssBaseline(
    Box(
      sx = list(p = 2),
      Typography("Hello Material UI!", variant = "h4")
    )
  )
)

server <- function(input, output, session) {}

shinyApp(ui, server)
```

Use `muiMaterialPage()` instead of `fluidPage()` and wrap your UI in
`CssBaseline()`. Material UI uses its own design system and conflicts
with Bootstrap.

For Shiny inputs, server-side rendering, tabs, and styling details, see
the [Getting
Started](https://felixluginbuhl.com/muiMaterial/articles/getting-started.html)
vignette.

## Resources

- [Package documentation](https://felixluginbuhl.com/muiMaterial/)
- [Getting Started
  vignette](https://felixluginbuhl.com/muiMaterial/articles/getting-started.html)
- [All R
  examples](https://github.com/lgnbhl/muiMaterial/tree/main/inst/examples)
- [Official Material UI
  docs](https://mui.com/material-ui/getting-started/)

## Contributing

Found a bug or have a feature request? [Open an
issue](https://github.com/lgnbhl/muiMaterial/issues). Pull requests are
welcome.

Follow [Felix Luginbuhl](https://linkedin.com/in/FelixLuginbuhl) on
LinkedIn for updates.

## License

This package is released under the [MIT License](LICENSE).
