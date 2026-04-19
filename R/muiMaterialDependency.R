#' muiMaterial JS dependency
#'
#' @return HTML dependency object.
#'
#' @export
muiMaterialDependency <- function() {
  htmltools::htmlDependency(
    name = "muiMaterial",
    version = as.character(utils::packageVersion("muiMaterial")),
    package = "muiMaterial",
    src = "www/muiMaterial",
    script = "mui-material.js"
  )
}
