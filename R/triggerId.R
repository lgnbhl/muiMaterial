component <- function(name, module = "@mui/material") {
  function(triggerId, ...) {
    checkmate::assert_string(triggerId)
    shiny.react::reactElement(
      module = module,
      name = name,
      props = shiny.react::asProps(triggerId = triggerId, ...),
      deps = muiMaterialDependency()
    )
  }
}

#' Drawer.triggerId
#'
#' Custom Drawer for mobiles using Drawer component. See 'js/src/Drawer.triggerId.jsx'.
#'
#' @export
#' @param ... args to pass to element
#' @return Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
Drawer.triggerId <- component(
  "MuiDrawerTriggerId",
  module = "@/muiMaterial"
)

#' Menu.triggerId
#'
#' Custom Menu using Menu component. See 'js/src/MuiMenuTriggerId.jsx'.
#'
#' @export
#' @param ... args to pass to element
#' @return Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
Menu.triggerId <- component(
  "MuiMenuTriggerId",
  module = "@/muiMaterial"
)

#' SwipeableDrawer.triggerId
#'
#' Custom Drawer for mobiles using SwipeableDrawer component. See 'js/src/SwipeableDrawer.triggerId.jsx'.
#'
#' @export
#' @param ... args to pass to element
#' @return Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
SwipeableDrawer.triggerId <- component(
  "MuiSwipeableDrawerTriggerId",
  module = "@/muiMaterial"
)
