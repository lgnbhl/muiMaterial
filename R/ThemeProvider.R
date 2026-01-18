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
#' @return Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
#' @description
#' Visit the documentation at https://mui.com/api/Theme-Provider/ for more information.
ThemeProvider <- component("ThemeProvider", module = "@/muiMaterial")
