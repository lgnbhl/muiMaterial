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
    src = c(file = "muiMaterial"),
    script = "mui-material.js"
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
