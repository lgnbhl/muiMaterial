#' Documentation template for remaining components
#'
#' @param ... Props to pass to the component.
#' The allowed props are listed below in the \bold{Details} section.
#'
#' @return
#' Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
#'
#' @keywords internal
#' @name component
NULL

#' Documentation template for components with `.shinyInput` wrappers
#'
#' @param inputId ID of the component.
#' @param value Starting value.
#' @param session Object passed as the `session` argument to Shiny server.
#' @param ... Props to pass to the component.
#' The allowed props are listed below in the \bold{Details} section.
#'
#' @return
#' Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
#' The update functions return nothing (called for side effects).
#'
#' @section Reserved props:
#' `.shinyInput` wrappers own the component's `value` (or `checked`/`page`) and
#' `onChange` props -- that binding is how the value reaches `input[[inputId]]`.
#' Do not pass your own `value`/`onChange` through `...`: a caller-supplied prop
#' overrides the wrapper's and silently breaks input reporting. Set the starting
#' value with the `value` argument and react to changes server-side via
#' `input[[inputId]]` (or push new values with the matching `update*` function).
#'
#' Action inputs (`Button`, `IconButton`, `Fab`, `ListItemButton`, `MenuItem`,
#' ... -- anything whose `input[[inputId]]` is a click counter) own the
#' `onClick` prop the same way: passing your own `onClick` through `...`
#' replaces the click-counter wiring and `input[[inputId]]` stops updating.
#' Use `onClick = triggerEvent("name")` on a static component instead if you
#' need a custom browser-to-server signal.
#'
#' Passing a reserved prop (`checked`/`onChange` on value inputs, `onClick`
#' on action inputs) raises a warning. Overriding the wiring on purpose --
#' e.g. pushing server-owned state down with `checked` inside `renderReact()`
#' -- is a legitimate advanced pattern; silence the warning with
#' `options(muiMaterial.warnReservedProps = FALSE)`.
#'
#' @keywords internal
#' @name shinyInput
NULL
