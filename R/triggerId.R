trigger <- function(name, module = "@/muiMaterial") {
  function(triggerId, ...) {
    checkmate::assert_string(triggerId)
    muiElement(name, module, shiny.react::asProps(triggerId = triggerId, ...))
  }
}

#' Drawer.triggerId
#'
#' Custom Drawer bound to a DOM element by id. See 'js/src/MuiDrawerTriggerId.jsx'.
#'
#' @param triggerId HTML id of an existing DOM element that acts as the trigger (button, link, etc.) to open the Drawer.
#' @param ... Named arguments forwarded as React props, plus children to render inside the component.
#'   Pass \code{closeOnLinkClick = FALSE} to keep the Drawer open when any link inside it is
#'   clicked. The default (\code{TRUE}) closes the Drawer on any \code{<a>} click, including
#'   external links with \code{target = "_blank"}.
#' @return Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
#' @examplesIf interactive()
#' library(shiny)
#' library(muiMaterial)
#'
#' ui <- muiMaterialPage(
#'   Button(id = "openDrawer", "Open drawer"),
#'   Drawer.triggerId("openDrawer", anchor = "left", "Drawer content here")
#' )
#'
#' shinyApp(ui, function(input, output, session) {})
#' @export
Drawer.triggerId <- trigger("MuiDrawerTriggerId")

#' Menu.triggerId
#'
#' Custom Menu bound to a DOM element by id. See 'js/src/MuiMenuTriggerId.jsx'.
#'
#' Pass `closeOnItemClick = FALSE` to disable auto-close on click (useful when the
#' menu contains interactive children like checkboxes).
#'
#' @param triggerId HTML id of an existing DOM element that acts as the trigger (button, link, etc.) to open the Menu.
#' @param ... Named arguments forwarded as React props, plus children to render inside the component.
#'   Pass `closeOnItemClick = FALSE` to keep the menu open after a click.
#' @return Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
#' @export
Menu.triggerId <- trigger("MuiMenuTriggerId")

#' SwipeableDrawer.triggerId
#'
#' Custom SwipeableDrawer bound to a DOM element by id. See 'js/src/MuiSwipeableDrawerTriggerId.jsx'.
#'
#' @param triggerId HTML id of an existing DOM element that acts as the trigger (button, link, etc.) to open the Drawer.
#' @param ... Named arguments forwarded as React props, plus children to render inside the component.
#' @return Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
#' @export
SwipeableDrawer.triggerId <- trigger("MuiSwipeableDrawerTriggerId")

#' Dialog.triggerId
#'
#' Custom Dialog bound to a DOM element by id. See 'js/src/MuiDialogTriggerId.jsx'.
#' Open/close state is managed entirely client-side, so this works in Shiny apps,
#' Quarto documents, and static HTML without server logic.
#'
#' @param triggerId HTML id of an existing DOM element that acts as the trigger to open the Dialog.
#' @param ... Named arguments forwarded as React props, plus children to render inside the component.
#' @return Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
#' @examplesIf interactive()
#' library(shiny)
#' library(muiMaterial)
#'
#' ui <- muiMaterialPage(
#'   Button(id = "openDialog", "Open dialog"),
#'   Dialog.triggerId(
#'     "openDialog",
#'     DialogTitle("Hello"),
#'     DialogContent("Open/close managed entirely client-side.")
#'   )
#' )
#'
#' shinyApp(ui, function(input, output, session) {})
#' @export
Dialog.triggerId <- trigger("MuiDialogTriggerId")

#' Modal.triggerId
#'
#' Custom Modal bound to a DOM element by id. See 'js/src/MuiModalTriggerId.jsx'.
#' Open/close state is managed entirely client-side.
#'
#' @param triggerId HTML id of an existing DOM element that acts as the trigger to open the Modal.
#' @param ... Named arguments forwarded as React props, plus children to render inside the component.
#' @return Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
#' @export
Modal.triggerId <- trigger("MuiModalTriggerId")

#' Popover.triggerId
#'
#' Custom Popover bound to a DOM element by id. See 'js/src/MuiPopoverTriggerId.jsx'.
#' The trigger element acts as the anchor; the Popover opens on click and closes on clickaway.
#'
#' @param triggerId HTML id of an existing DOM element that acts as the anchor/trigger for the Popover.
#' @param ... Named arguments forwarded as React props, plus children to render inside the component.
#' @return Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
#' @export
Popover.triggerId <- trigger("MuiPopoverTriggerId")
