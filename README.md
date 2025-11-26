
<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/muiMaterial)](https://CRAN.R-project.org/package=muiMaterial)
[![R-CMD-check](https://github.com/lgnbhl/muiMaterial/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/lgnbhl/muiMaterial/actions/workflows/R-CMD-check.yaml)
[![](https://img.shields.io/badge/@mui/material-%5E7.3.5-blue.svg)](https://mui.com/material-ui/getting-started/)
[![](https://img.shields.io/badge/react-18.3.1-blue.svg)](https://mui.com/material-ui/getting-started/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Follow-E4405F?style=social&logo=linkedin)](https://www.linkedin.com/in/FelixLuginbuhl)
<!-- badges: end -->

# muiMaterial

The `muiMaterial` R package gives access to the popular [Material
UI](https://mui.com/material-ui/getting-started/) React components for
Shiny and Quarto. It facilitates:

- The development of [fully
  customizable](https://felixluginbuhl.com/muiMaterial/articles/dashboard-basic.html)
  Shiny dashboards.
  - The underlying [UI
    components](https://felixluginbuhl.com/muiMaterial/articles/) (e.g.,
    cards, buttons, navbars, etc) can be used in any Shiny app.
- The creation of static dashboards using the `reactRouter` R package:
  - [Use a
    router](https://felixluginbuhl.com/muiMaterial/articles/routing.html)
    to create dashboards without a server.
- The access of advanced React components from other MUI React
  libraries:
  - [`muiCharts`](https://felixluginbuhl.com/muiCharts/) provides access
    to MUI interactive charts.
  - [`muiTreeView`](https://felixluginbuhl.com/muiTreeView/) gives
    access to customizabe MUI TreeView.

### Install

Install the `muiMaterial` package as follows:

``` r
remotes::install_github("lgnbhl/muiMaterial")
```

### Example

The quickest way to see what `muiMaterial` can do is to run
`muiMaterialExample("mui-template-dashboard")`. This launches a demo app
containing both `muiMaterial` and `reactRouter` as well as the MUI R
package companions `muiCharts` and `muiTreeView`.

This demo is a replica of the [official
template](https://mui.com/material-ui/getting-started/templates/dashboard/)
created by MUI, the company behind Material UI.

``` r
muiMaterial::muiMaterialExample("mui-template-dashboard")
```

You can also have a look at the available Shiny inputs by running the
“showcase” Shiny app:

``` r
# all examples available: muiMaterialExample()
muiMaterial::muiMaterialExample("showcase")
```

### Shiny inputs wrappers

To use Material UI components as Shiny inputs, the package provides
`*.shinyInput` wrappers functions (for more info read [this
article](https://appsilon.github.io/shiny.react/articles/shiny-react.html#creating-input-wrappers)
from the **shiny.react** documentation).

For example, to use the `Button` component with Shiny, you should use
`Button.shinyInput()` instead.

### Bootstrap conflict

**muiMaterial** can enter in conflict with the Bootstrap CSS framework,
used by default in Shiny functions such as `shiny::fluidPage()` and
friends.

To normalize the CSS page and be sure the components render correctly,
please wrap them in the function `CssBaseline()`.

Given Material UI high customization, you can easily fix styling issues
using the CSS proprieties using the `sx` argument.

To create a Shiny app without Bootstrap, you can use
`muiMaterial::muiMaterialPage()`.

The Bootstrap conflict could potentially be solved by using [Shadow
DOM](https://mui.com/material-ui/customization/shadow-dom/).

### Contribute

If you have any issue, question or want to contribute with a pull
request, don’t hesitate to write me on
<https://github.com/lgnbhl/muiMaterial>.

For updates follow [Felix
Luginbuhl](https://linkedin.com/in/FelixLuginbuhl) on LinkedIn.
