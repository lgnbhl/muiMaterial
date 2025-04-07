#' Get all available Shiny app examples
#'
#' @return A character vector.
#' @export
getExamples <- function() {
  sub(
    pattern = '\\.R$',
    replacement =  '',
    list.files(
      system.file("examples", package = "shinyMaterialUI"),
      full.names = FALSE,
      recursive = FALSE
    )
  )
}

#' Run shinyMaterialUI example
#'
#' @param name Use \link{getExamples} to get
#' the available examples.
#'
#' @return Runs a Shiny app.
#' @export
runExample <- function(name) {
  shiny::shinyAppFile(
    system.file(
      sprintf(paste0("examples/", name, ".R")),
      package = "shinyMaterialUI"
    )
  )
}

#' Run shinyMaterialUI showcase
#'
#' @return Runs a Shiny app.
#' @export
runShowcase <- function() {
  shiny::shinyAppFile(
    system.file(
      sprintf(paste0("showcase/showcase.R")),
      package = "shinyMaterialUI"
    )
  )
}
