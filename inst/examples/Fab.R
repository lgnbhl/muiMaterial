library(shinyMaterialUI)
library(shiny)

# https://mui.com/material-ui/react-floating-action-button/
FloatingActionButtons <- Box(
  sx = list('& > :not(style)' = list(m = 1)),
  Fab(
    color = "primary",
    'aria-label' = "add",
    shiny::icon("add")
  ),
  Fab(
    color = "secondary",
    'aria-label' = "edit",
    shiny::icon("edit")
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

ui_Fab <- shinyMaterialUIPage(
  CssBaseline(
    FloatingActionButtons
  )
)

server_Fab <- function(input, output, session) {

}

if (interactive()) {
  shinyApp(ui = ui_Fab, server = server_Fab)
}
