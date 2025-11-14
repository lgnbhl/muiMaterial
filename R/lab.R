# Components and inputs from @mui/lab added manually

component <- function(name, module = '@mui/material') {
  function(...) shiny.react::reactElement(
    module = module,
    name = name,
    props = shiny.react::asProps(...),
    deps = muiMaterialDependency()
  )
}

input <- function(name, defaultValue = "", module = "@/muiMaterial") {
  function(inputId, ..., value = defaultValue) shiny.react::reactElement(
    module = module, name = name,
    props = shiny.react::asProps(inputId = inputId, ..., value = value),
    deps = muiMaterialDependency()
  )
}

#' @rdname TabList
#' @export
TabList <- component('TabList', module = '@mui/lab')

#' @rdname TabPanel
#' @export
TabPanel <- component('TabPanel', module = '@mui/lab')

#' @rdname TabContext
#' @export
TabContext <- component('TabContext', module = '@mui/lab')

#' @rdname TabList
#' @inherit shinyInput params return
#' @export
TabList.shinyInput <- input("TabList")

#' @rdname TabList
#' @inherit shinyInput params return
#' @export
updateTabList.shinyInput <- shiny.react::updateReactInput

#' @rdname TabPanel
#' @inherit shinyInput params return
#' @export
TabPanel.shinyInput <- input('TabPanel')

#' @rdname TabPanel
#' @inherit shinyInput params return
#' @export
updateTabPanel.shinyInput <- shiny.react::updateReactInput

#' @rdname TabContext
#' @inherit shinyInput params return
#' @export
TabContext.shinyInput <- input('TabContext')

#' @rdname TabContext
#' @inherit shinyInput params return
#' @export
updateTabContext.shinyInput <- shiny.react::updateReactInput

