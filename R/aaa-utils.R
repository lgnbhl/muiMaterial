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

# Warn when a caller passes a prop that the `.shinyInput` wiring owns
# (`checked`/`onChange` on value inputs, `onClick` on action inputs): the
# caller's prop overrides the adapter's and `input[[inputId]]` silently stops
# updating -- the single most common muiMaterial mistake. A warning rather
# than an error because overriding the wiring deliberately (server state as
# the single source of truth, pushed down via renderReact()) is a legitimate
# advanced pattern; those callers can set
# options(muiMaterial.warnReservedProps = FALSE).
warnIfReservedProps <- function(fn, reserved, argNames) {
  if (!isTRUE(getOption("muiMaterial.warnReservedProps", TRUE))) {
    return(invisible(NULL))
  }
  hit <- intersect(reserved, argNames)
  if (length(hit) > 0) {
    warning(
      fn, "(): ", paste0("`", hit, "`", collapse = ", "),
      if (length(hit) > 1) " are reserved props" else " is a reserved prop",
      " -- a caller-supplied value overrides the .shinyInput wiring and ",
      "`input[[inputId]]` may stop updating. Set the initial state with the ",
      "`value` argument instead; see the 'Reserved props' section in ",
      "?shinyInput. Suppress this warning with ",
      "options(muiMaterial.warnReservedProps = FALSE).",
      call. = FALSE
    )
  }
  invisible(NULL)
}
