trigger <- function(name, module = "@/muiMaterial") {
  function(triggerId, ...) {
    checkmate::assert_string(triggerId)
    tag <- shiny.react::reactElement(
      module = module,
      name = name,
      props = shiny.react::asProps(triggerId = triggerId, ...),
      deps = muiMaterialDependency()
    )
    class(tag) <- c("muiMaterial", class(tag))
    tag
  }
}

#' Drawer.triggerId
#'
#' Custom Drawer bound to a DOM element by id. See 'js/src/MuiDrawerTriggerId.jsx'.
#'
#' @export
#' @param triggerId HTML id of an existing DOM element that acts as the trigger (button, link, etc.) to open the Drawer.
#' @param ... args to pass to element
#' @return Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
Drawer.triggerId <- trigger("MuiDrawerTriggerId")

#' Menu.triggerId
#'
#' Custom Menu bound to a DOM element by id. See 'js/src/MuiMenuTriggerId.jsx'.
#'
#' Pass `closeOnItemClick = FALSE` to disable auto-close on click (useful when the
#' menu contains interactive children like checkboxes).
#'
#' @export
#' @param triggerId HTML id of an existing DOM element that acts as the trigger (button, link, etc.) to open the Menu.
#' @param ... args to pass to element
#' @return Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
Menu.triggerId <- trigger("MuiMenuTriggerId")

#' SwipeableDrawer.triggerId
#'
#' Custom SwipeableDrawer bound to a DOM element by id. See 'js/src/MuiSwipeableDrawerTriggerId.jsx'.
#'
#' @export
#' @param triggerId HTML id of an existing DOM element that acts as the trigger (button, link, etc.) to open the Drawer.
#' @param ... args to pass to element
#' @return Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
SwipeableDrawer.triggerId <- trigger("MuiSwipeableDrawerTriggerId")

#' Dialog.triggerId
#'
#' Custom Dialog bound to a DOM element by id. See 'js/src/MuiDialogTriggerId.jsx'.
#' Open/close state is managed entirely client-side, so this works in Shiny apps,
#' Quarto documents, and static HTML without server logic.
#'
#' @export
#' @param triggerId HTML id of an existing DOM element that acts as the trigger to open the Dialog.
#' @param ... args to pass to element
#' @return Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
Dialog.triggerId <- trigger("MuiDialogTriggerId")

#' Modal.triggerId
#'
#' Custom Modal bound to a DOM element by id. See 'js/src/MuiModalTriggerId.jsx'.
#' Open/close state is managed entirely client-side.
#'
#' @export
#' @param triggerId HTML id of an existing DOM element that acts as the trigger to open the Modal.
#' @param ... args to pass to element
#' @return Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
Modal.triggerId <- trigger("MuiModalTriggerId")

#' Popover.triggerId
#'
#' Custom Popover bound to a DOM element by id. See 'js/src/MuiPopoverTriggerId.jsx'.
#' The trigger element acts as the anchor; the Popover opens on click and closes on clickaway.
#'
#' @export
#' @param triggerId HTML id of an existing DOM element that acts as the anchor/trigger for the Popover.
#' @param ... args to pass to element
#' @return Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
Popover.triggerId <- trigger("MuiPopoverTriggerId")
