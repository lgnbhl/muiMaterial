#' Prepare muiMaterial tag for standalone HTML rendering
#'
#' Wraps a muiMaterial component in a tagList with proper head content
#' (viewport meta, body margin reset) so it renders correctly via html_print.
#'
#' @param tag A muiMaterial shiny.tag object.
#' @return A browsable tagList ready for html_print.
#' @keywords internal
mui_browsable <- function(tag) {
  content <- htmltools::tagList(
    htmltools::tags$head(
      htmltools::tags$meta(
        name = "viewport",
        content = "initial-scale=1, width=device-width"
      ),
      htmltools::tags$style("body{margin:0}")
    ),
    tag
  )
  htmltools::browsable(content)
}

#' Print muiMaterial components
#'
#' When called interactively, renders the component in the IDE viewer panel.
#' Otherwise, falls back to standard shiny.tag printing (raw HTML text).
#'
#' @param x A muiMaterial object (also inherits shiny.tag).
#' @param browse Whether to render in viewer. Defaults to TRUE in interactive sessions.
#' @param ... Additional arguments passed to print.
#' @return Invisibly returns x.
#'
#' @export
print.muiMaterial <- function(x, browse = interactive(), ...) {
  if (browse) {
    htmltools::html_print(mui_browsable(x))
  } else {
    NextMethod("print")
  }
  invisible(x)
}

#' Knit print method for muiMaterial components
#'
#' Renders muiMaterial components as HTML in knitr/Quarto documents.
#'
#' @param x A muiMaterial object.
#' @param ... Additional arguments passed to the underlying method.
#' @return knitr output suitable for HTML documents.
#'
#' @exportS3Method knitr::knit_print
knit_print.muiMaterial <- function(x, ...) {
  knitr::knit_print(mui_browsable(x), ...)
}
