#' Run muiMaterial example
#'
#' Launch a Shiny example app or list the available examples.
#' Use `muiMaterial::muiMaterialExample("showcase")` to run a showcase app with
#' all the components.
#'
#' @param example The name of the example to run, or `NULL` to retrieve the list of examples.
#' @param ... Additional arguments to pass to `shiny::runApp()`.
#' @return When `example` is `NULL`, a character vector of the available example
#' names. Otherwise the function launches a Shiny app and does not return;
#' interrupt R to stop it (usually by pressing Ctrl+C or Esc).
#'
#' @details This function is adapted from `runExample()` in the shiny.blueprint
#' package.
#'
#' @export
muiMaterialExample <- function(example = NULL, ...) {
  examples <- system.file(
    "examples",
    package = utils::packageName(),
    mustWork = TRUE
  )
  available <- sub("\\.R$", "", list.files(examples))
  if (is.null(example)) {
    available
  } else {
    checkmate::assert_string(example)
    path <- file.path(examples, example)
    if (!grepl("\\.R$", path) && !file.exists(path)) {
      path <- paste0(path, ".R")
    }
    if (!file.exists(path)) {
      stop(
        "Unknown example '", example, "'. Available examples: ",
        paste(available, collapse = ", "), ".",
        call. = FALSE
      )
    }
    shiny::runApp(path, ...)
  }
}
