#' muiMaterial: Material UI for Shiny and Quarto
#'
#' `muiMaterial` is a thin R wrapper around the
#' [Material UI](https://mui.com/material-ui/getting-started/) React
#' component library, exposed for Shiny applications and Quarto documents
#' via [shiny.react][shiny.react::shiny.react].
#'
#' @section Function naming convention:
#'
#' The package deliberately mirrors the MUI JavaScript API:
#'
#' \describe{
#'   \item{`<Component>()`}{
#'     PascalCase, e.g. [Button()], [Box()], [Typography()]. These
#'     produce a React element you can drop into the UI of a Shiny app or
#'     a Quarto document. They are not bound to Shiny's input system.
#'   }
#'   \item{`<Component>.shinyInput()`}{
#'     The dotted suffix marks the *Shiny-wired* variant. These accept an
#'     `inputId` and report their value back to the Shiny server as
#'     `input[[inputId]]`. The matching `update<Component>.shinyInput()`
#'     mutates the component from the server.
#'   }
#'   \item{`<Component>.triggerId()`}{
#'     Variants of overlay components (Drawer, Dialog, Menu, Modal,
#'     Popover, SwipeableDrawer) that bind to an existing DOM element by
#'     id. Open/close state is managed entirely client-side, so they work
#'     in Shiny apps, Quarto documents and static HTML without any
#'     server logic.
#'   }
#' }
#'
#' The dot suffix (`.shinyInput`, `.triggerId`) is intentional: it groups
#' related families together in autocompletion (`Button.<TAB>` surfaces
#' `Button.shinyInput`, `updateButton.shinyInput`, etc.) without
#' shadowing the corresponding MUI component. These functions are
#' regular R functions, **not** S3 methods.
#'
#' @section Getting started:
#'
#' Wrap your UI in [muiMaterialPage()] (or include a
#' [muiMaterialDependency()] manually) and start composing components.
#' See https://felixluginbuhl.com/muiMaterial/articles/ for a
#' full walkthrough.
#'
#' @keywords internal
"_PACKAGE"
