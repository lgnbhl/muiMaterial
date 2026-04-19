library(muiMaterial)
library(shiny)

# https://mui.com/material-ui/react-floating-action-button/
FloatingActionButtons <- Box(
  sx = list('& > :not(style)' = list(m = 1)),
  Fab(
    color = "primary",
    'aria-label' = "plus",
    shiny::icon("plus")
  ),
  Fab(
    color = "secondary",
    'aria-label' = "pen",
    shiny::icon("pen")
  ),
  Fab(
    variant = "extended",
    Box(
      sx = list(mr = 1),
      shiny::icon("arrow-up")
    ),
    "Navigate"
  ),
  Fab(
    disabled = TRUE,
    'aria-label' = "like",
    shiny::icon("heart")
  )
)

ui_Fab <- muiMaterialPage(
  CssBaseline(
    FloatingActionButtons
  )
)

server_Fab <- function(input, output, session) {}

if (interactive()) {
  shinyApp(ui = ui_Fab, server = server_Fab)
}
