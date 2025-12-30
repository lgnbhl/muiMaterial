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
#' @param materialSymbols List of Material Symbols to add with Google Font API, ex: c("home", "settings").
#' @param addFontRoboto Whether to add Roboto font with Google Font API.
#' @param suppressBootstrap Whether to suppress Bootstrap.
#' @param debugReact Whether to enable react debug mode. Default to FALSE.
#' @return html object with 'margin:0' which can be passed as the UI of a Shiny app.
#'
#' @export
muiMaterialPage <- function(..., materialSymbols = FALSE, addFontRoboto = FALSE, suppressBootstrap = TRUE, debugReact = FALSE) {
  htmltools::tags$html(
    htmltools::tags$head(
      htmltools::tags$meta(
        name = "viewport",
        content = "initial-scale=1, width=device-width"
      ),
      if (addFontRoboto) htmltools::tags$link(
        rel = "preconnect",
        href = "https://fonts.googleapis.com"
      ),
      if (addFontRoboto) htmltools::tags$link(
        rel = "stylesheet",
        href = "https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap"
      ),
      if (!is.null(materialSymbols)) htmltools::tags$link(
        rel = "preconnect",
        href = "https://fonts.googleapis.com"
      ),
      if (!is.null(materialSymbols)) htmltools::tags$link(
        rel = "stylesheet",
        href = paste0(
          "https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined&icon_names=",
          paste(sort(unique(materialSymbols)), collapse = ","), "&display=block"
        )
      )
    ),
    htmltools::tagList(
      create_react_deps(),
      htmltools::tags$body(
        if (debugReact) shiny.react::enableReactDebugMode(),
        style = "margin:0",
        if (suppressBootstrap) htmltools::suppressDependencies("bootstrap"),
        ...
      )
    )
  )
}

# adapted from https://github.com/RinteRface/shinyNextUI/blob/main/R/deps.R
unpkg_root <- "https://unpkg.com"
react_deps <- c("react", "react-dom")

build_dep <- function(name, version = 18, mode = c("prod", "dev")) {
  mode <- match.arg(mode)
  mode <- switch(mode, "prod" = "production.min", "dev" = "development")
  
  cdn <- sprintf(
    "%s/%s@%s/umd/",
    unpkg_root,
    name,
    version
  )
  htmltools::htmlDependency(
    name = sprintf("%s-v%s", name, version),
    version = utils::packageVersion("muiMaterial"),
    src = c(href = cdn),
    script = sprintf("%s.%s.js", name, mode)
  )
}

create_react_deps <- function() {
  lapply(react_deps, build_dep)
}
