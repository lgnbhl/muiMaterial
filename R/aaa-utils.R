# Build a shiny.react React element carrying the package JS dependency and the
# `muiMaterial` S3 class. Every wrapper in the package (the factories below plus
# the bespoke builders in inputs.R, triggerId.R and static-tabs.R) funnels
# through here, so the dependency wiring and class tag live in one place.
muiElement <- function(name, module, props) {
  tag <- shiny.react::reactElement(
    module = module,
    name = name,
    props = props,
    deps = muiMaterialDependency()
  )
  class(tag) <- c("muiMaterial", class(tag))
  tag
}

# Internal factory shared by the component wrappers in components.R,
# components-extra.R and ThemeProvider.R. Builds a function that returns a
# shiny.react React element tagged with the `muiMaterial` S3 class.
component <- function(name, module = "@mui/material") {
  function(...) {
    muiElement(name, module, shiny.react::asProps(...))
  }
}
