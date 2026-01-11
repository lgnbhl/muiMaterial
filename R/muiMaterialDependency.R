#' Mui Charts UI JS dependency
#'
#' @return HTML dependency object.
#'
#' @export
muiMaterialDependency <- function() {
  htmltools::htmlDependency(
    name = "muiMaterial",
    version = "7.3.5",
    package = "muiMaterial",
    src = "www/muiMaterial",
    script = "mui-material.js"
  )
}
