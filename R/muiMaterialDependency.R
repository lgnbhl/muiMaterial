# Cache environment: the dependency object is requested once per element
# created, and utils::packageVersion() reads package metadata from disk on
# every call. The version cannot change within a session, so build the
# dependency once, lazily, at first use.
.muiMaterialDependencyCache <- new.env(parent = emptyenv())

#' muiMaterial JS dependency
#'
#' @return HTML dependency object.
#'
#' @export
muiMaterialDependency <- function() {
  if (is.null(.muiMaterialDependencyCache$dep)) {
    .muiMaterialDependencyCache$dep <- htmltools::htmlDependency(
      name = "muiMaterial",
      version = as.character(utils::packageVersion("muiMaterial")),
      package = "muiMaterial",
      src = "www/muiMaterial",
      script = "mui-material.js"
    )
  }
  .muiMaterialDependencyCache$dep
}
