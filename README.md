
<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/muiMaterial)](https://CRAN.R-project.org/package=muiMaterial)
[![R-CMD-check](https://github.com/lgnbhl/muiMaterial/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/lgnbhl/muiMaterial/actions/workflows/R-CMD-check.yaml)
[![](https://img.shields.io/badge/@mui/material-%5E7.3.7-blue.svg)](https://mui.com/material-ui/getting-started/)
[![](https://img.shields.io/badge/react-18.3.1-blue.svg)](https://mui.com/material-ui/getting-started/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Follow-E4405F?style=social&logo=linkedin)](https://www.linkedin.com/in/FelixLuginbuhl)
<!-- badges: end -->

# muiMaterial <img src="man/figures/logo.png" align="right" height="138" />

`muiMaterial` brings Material UI, the popular React components library,
to R and Shiny.

## Why using it?

#### Give your dashboards a unique look

Want to go beyond the standardised layout used by most Shiny dashboards?

If Shiny apps look all the same, it is because most use Bootstrap.
Replacing it with Material UI will take your dashboards to the next
level.

Developed by the company MUI, [Material
UI](https://mui.com/material-ui/getting-started/) is probably the most
popular React components library globally. `muiMaterial` allows access
to its vast library of UI tools, so you can create fully customized
dashboards and websites in R.

For example, launch a basic dashboard:

``` r
# remotes::install_github("lgnbhl/muiMaterial")
muiMaterial::muiMaterialExample("dashboard-simple")
```

Or have a look at the R replica of the official MUI dashboard template:

``` r
muiMaterial::muiMaterialExample("mui-template-dashboard")
```

#### Building custom components easily

Creating custom UI elements is simple. Here’s an example of a stat card:

``` r
Card(
  sx = list(p = 3),
  Typography("Material UI weekly downloads", variant = "h6", gutterBottom = TRUE),
  Typography("5.8M", variant = "h3", fontWeight = "bold")
)
```

Material UI’s component library makes customization intuitive. Just
compose components like building blocks.

#### Flexible Navigation

With the [reactRouter](https://felixluginbuhl.com/reactRouter/) R
package, you can build a complex and multi-page websites thanks to
[client-side
routing](https://felixluginbuhl.com/muiMaterial/articles/routing.html).

You are not blocked in standardized Shiny layouts, like in Bootstrap’s
based R packages such as `bslib` or `bs4Dash`.

#### Rich Ecosystem

Extend functionality with companion R packages:

- muiDataGrid (COMING SOON) - Professional data tables with filtering,
  sorting, and inline editing
- muiCharts (COMING SOON) - Beautiful, responsive charts
- [muiTreeView](https://felixluginbuhl.com/muiTreeView/) - Interactive
  tree navigation

## Quick start

#### Installation

``` r
install.packages("muiMaterial")
```

#### Your first Material UI app

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

**Important**: Use `muiMaterialPage()` instead of `fluidPage()` and wrap
your UI in `CssBaseline()` to ensure proper styling. Material UI uses
its own design system and conflicts with Bootstrap.

#### Shiny Input Wrappers

Material UI components become Shiny inputs with `*.shinyInput()`
wrappers. For example, use `Button.shinyInput()` instead of `Button()`
to capture user interactions in Shiny.

Explore available Shiny inputs with:

``` r
muiMaterial::muiMaterialExample("showcase")
```

#### Server side Shiny rendering

When rendering components from the server, use `shiny::renderUI()` or
`shiny.react::renderReact()` in your server function, and
`shiny::uiOutput()` or `shiny.react::reactOutput()` in your UI.

#### Creating tabs

Use `TabContext.shinyInput()`, `TabList.shinyInput()`, and
`TabPanel.shinyInput()` instead of the basic `Tabs()` component (which
currently doesn’t work). [See full
example](https://github.com/lgnbhl/muiMaterial/blob/main/inst/examples/Tabs.R).

For more advanced use cases, it is preferabe to use client-side routing
with [reactRouter](https://felixluginbuhl.com/reactRouter/).

#### Styling with sx

Customize any component using the `sx` argument for inline CSS-in-JS
styling. It’s more powerful and maintainable than traditional CSS.

**Read the full documentation with examples
[here](https://felixluginbuhl.com/muiMaterial/).**

## Contributing

Found a bug or have a feature request? Open an issue at
<https://github.com/lgnbhl/muiMaterial>

## More Information

- [Package documentation](https://felixluginbuhl.com/muiMaterial/)
- [All R
  examples](https://github.com/lgnbhl/muiMaterial/tree/main/inst/examples)
- [Official Material UI
  docs](https://mui.com/material-ui/getting-started/)

Follow [Felix Luginbuhl](https://linkedin.com/in/FelixLuginbuhl) on
LinkedIn for updates.
