#' HTML body without Bootstrap and margins
#'
#' Creates a Material UI page without using CssBaseline, so
#' you can use regular Shiny inputs or shiny.router.
#'
#' The Bootstrap library is suppressed by default, as it doesn't work well
#' with Material UI in general. Some default Material UI styles are apply, i.e. the
#' margin is removed for all browser and the font size.
#'
#' @details
#' \url{https://mui.com/material-ui/react-css-baseline/}
#'
#' @param ... The contents of the document body.
#' @param suppressBootstrap Whether to suppress Bootstrap.
#' @param debug_react Whether to enable react debug mode. Default to FALSE.
#' @return html object with 'margin:0' which can be passed as the UI of a Shiny app.
#'
#' @export
muiMaterialPage <- function(..., suppressBootstrap = TRUE, debug_react = FALSE) {
  htmltools::tags$html(
    htmltools::tags$head(
      htmltools::tags$meta(
        name = "viewport",
        content = "initial-scale=1, width=device-width"
      )
    ),
    htmltools::tagList(
      create_react_deps(),
      htmltools::tags$body(
        if (debug_react) shiny.react::enableReactDebugMode(),
        style = "margin:0",
        if (suppressBootstrap) htmltools::suppressDependencies("bootstrap"),
        ...
      )
    )
  )
}

component <- function(name, module = "@mui/material") {
  function(...) shiny.react::reactElement(
    module = module,
    name = name,
    props = shiny.react::asProps(...),
    deps = muiMaterialDependency()
  )
}

#' ThemeProvider
#'
#' Custom ThemeProvider built with MuiThemeProvider. See 'js/src/ThemeProvider.tsx'.
#'
#' @export
#' @param ... args to pass to element
#' @description
#' Visit the documentation at https://mui.com/api/Theme-Provider/ for more information.
ThemeProvider <- component("ThemeProvider", module = "@/muiMaterial")
