# Internal factory shared by the component wrappers in components.R,
# components-extra.R and ThemeProvider.R. Builds a function that returns a
# shiny.react React element tagged with the `muiMaterial` S3 class.
component <- function(name, module = "@mui/material") {
  function(...) {
    tag <- shiny.react::reactElement(
      module = module,
      name = name,
      props = shiny.react::asProps(...),
      deps = muiMaterialDependency()
    )
    class(tag) <- c("muiMaterial", class(tag))
    tag
  }
}
