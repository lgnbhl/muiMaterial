#' @rdname TabContext
#' @param value Initial selected tab value.
#' @param ... Child elements (typically a \code{Box} wrapping \code{TabList.static} and \code{TabPanel.static} components).
#' @export
TabContext.static <- function(value, ...) {
  tag <- shiny.react::reactElement(
    module = "@/muiMaterial",
    name = "MuiStaticTabContext",
    props = shiny.react::asProps(value = value, ...),
    deps = muiMaterialDependency()
  )
  class(tag) <- c("muiMaterial", class(tag))
  tag
}

#' @rdname TabList
#' @param ... Child \code{Tab} elements and other props.
#' @export
TabList.static <- function(...) {
  tag <- shiny.react::reactElement(
    module = "@/muiMaterial",
    name = "MuiStaticTabList",
    props = shiny.react::asProps(...),
    deps = muiMaterialDependency()
  )
  class(tag) <- c("muiMaterial", class(tag))
  tag
}

#' @rdname TabPanel
#' @param value The value that matches the corresponding tab.
#' @param ... Content to display when this tab is selected.
#' @export
TabPanel.static <- function(value, ...) {
  tag <- shiny.react::reactElement(
    module = "@/muiMaterial",
    name = "MuiStaticTabPanel",
    props = shiny.react::asProps(value = value, ...),
    deps = muiMaterialDependency()
  )
  class(tag) <- c("muiMaterial", class(tag))
  tag
}
