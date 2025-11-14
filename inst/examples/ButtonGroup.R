library(muiMaterial)
library(shiny)

# https://mui.com/material-ui/react-button-group/#basic-button-group
BasicButtonGroup <- ButtonGroup(
  variant = "contained",
  'aria-label' = "Basic button group",
  Button.shinyInput(inputId = "BasicButtonGroup1", "One"),
  Button.shinyInput(inputId = "BasicButtonGroup2", "Two"),
  Button.shinyInput(inputId = "BasicButtonGroup3", "Three")
)

ui_ButtonGroup <- CssBaseline(
  Box(
    sx = list(flexDirection = 'row', p = 1, gap = "500px"),
    BasicButtonGroup
  )
)

server_ButtonGroup <- function(input, output, session) { }

if (interactive()) {
  shinyApp(ui = ui_ButtonGroup, server = server_ButtonGroup)
}
