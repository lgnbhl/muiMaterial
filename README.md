
<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/shinyMaterialUI)](https://CRAN.R-project.org/package=shinyMaterialUI)
[![R-CMD-check](https://github.com/lgnbhl/shinyMaterialUI/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/lgnbhl/shinyMaterialUI/actions/workflows/R-CMD-check.yaml)
[![](https://img.shields.io/badge/@mui/material-%5E7.3.4-blue.svg)](https://mui.com/material-ui/getting-started/)
[![](https://img.shields.io/badge/react-18.3.1-blue.svg)](https://mui.com/material-ui/getting-started/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Follow-E4405F?style=social&logo=linkedin)](https://www.linkedin.com/in/FelixLuginbuhl)
<!-- badges: end -->

# shinyMaterialUI

**shinyMaterialUI** provides a wrapper around [Material
UI](https://mui.com/material-ui/getting-started/), the popular React
framework.

### Install

``` r
remotes::install_github("lgnbhl/shinyMaterialUI")
```

### Example

To quickly get started with any example:

``` r
library(shinyMaterialUI)

# all examples available: shinyMaterialUIExample()
shinyMaterialUIExample("showcase")
```

MUI, the company behind Material UI, made template examples. Using the R
package **reactRouter**, it is possible to reproduce it in R:

``` r
shinyMaterialUIExample("mui-template-dashboard")
```

### Shiny inputs wrappers

To use Material UI components as Shiny inputs, the package provides
`*.shinyInput` wrappers functions (for more info read [this
article](https://appsilon.github.io/shiny.react/articles/shiny-react.html#creating-input-wrappers)
from the **shiny.react** documentation).

For example, to use the `Button` component with Shiny, you should use
`Button.shinyInput()` instead.

### Bootstrap conflict

**shinyMaterialUI** can enter in conflict with the Bootstrap CSS
framework, used by default in Shiny functions such as
`shiny::fluidPage()` and friends.

To normalize the CSS page and be sure the components render correctly,
please wrap them in the function `CssBaseline()`.

Given Material UI high customization, you can easily fix styling issues
using the CSS proprieties using the `sx` argument.

To create a Shiny app without Bootstrap, you can use
`shinyMaterialUI::shinyMaterialUIPage()`.

### Contribute

If you have any issue, question or want to contribute with a pull
request, don’t hesitate to write me on
<https://github.com/lgnbhl/shinyMaterialUI>.

For updates follow [Felix
Luginbuhl](https://linkedin.com/in/FelixLuginbuhl) on LinkedIn.
