muiMaterialDependency <- function() {
  htmltools::htmlDependency(
    name = "shinyMaterialUI",
    version = "0.0.1",
    package = "shinyMaterialUI",
    src = c(file = "shinyMaterialUI-7.0.1"),
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
    version = utils::packageVersion("shinyMaterialUI"),
    src = c(href = cdn),
    script = sprintf("%s.%s.js", name, mode)
  )
}

create_react_deps <- function() {
  lapply(react_deps, build_dep)
}
