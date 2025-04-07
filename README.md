
<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/shinyMaterialUI)](https://CRAN.R-project.org/package=shinyMaterialUI)
[![R-CMD-check](https://github.com/lgnbhl/shinyMaterialUI/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/lgnbhl/shinyMaterialUI/actions/workflows/R-CMD-check.yaml)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Follow-E4405F?style=social&logo=linkedin)](https://www.linkedin.com/in/FelixLuginbuhl)
[![](https://img.shields.io/badge/@mui/material-%5E7.0.1-blue.svg)](https://mui.com/material-ui/getting-started/)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

# shinyMaterialUI <img src="man/figures/logo.png" align="right" height="138" />

The goal of **shinyMaterialUI** is to provide a wrapper around [Material
UI](https://mui.com/material-ui/getting-started/), known as the most
popular React framework.

### Install

``` r
remotes::install_github("lgnbhl/shinyMaterialUI")
```

### Example

To quickly get started with any example:

``` r
library(shinyMaterialUI)
# Get all examples
getExamples()
# Run the app for an example
runExample("Autocomplete")
```

You can run the showcase Shiny app with:

``` r
shinyMaterialUI::runShowcase()
```

A dashboard example is also available
[here](https://github.com/lgnbhl/shinyMaterialUI/inst/dashboard).

### Shiny inputs wrappers

To use Mui Material components as Shiny inputs, the package provides
`*.shinyInput` wrappers functions (for more info read [this
article](https://appsilon.github.io/shiny.react/articles/shiny-react.html#creating-input-wrappers)
from the **shiny.react** documentation).

For example, to use the `Button` MUI Material component with Shiny, you
should use `Button.shinyInput()` instead.

### Bootstrap conflict

**shinyMaterialUI** can enter in conflict with the Bootstrap CSS
framework, used by default in Shiny functions such as
`shiny::fluidPage()` and friends.

To normalize the CSS page and be sure the MUI Material UI components
render correctly, please wrap them in the function `CssBaseline()`.

Given MUI Material UI high customization, you can easily fix styling
issues using the CSS proprieties using the `sx` argument.

To create a Shiny app without Bootstrap, you can use
`shinyMaterialUI::shinyMaterialUIPage()`.

### Contribute

If you have any issue, question or want to contribute with a pull
request, don’t hesitate to write me on
<https://github.com/lgnbhl/shinyMaterialUI>.

For updates follow [Felix
Luginbuhl](https://linkedin.com/in/FelixLuginbuhl) on LinkedIn.
