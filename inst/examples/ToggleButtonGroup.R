library(muiMaterial)
library(shiny)

# https://mui.com/material-ui/react-toggle-button/#exclusive-selection
toggleButtonGroupWidget <- ToggleButtonGroup.shinyInput(
  inputId = "ToggleButtonGroup1",
  value = 1,
  ToggleButton.shinyInput(inputId = "ToggleButton1", value = 1, "One"),
  ToggleButton.shinyInput(inputId = "ToggleButton2", value = 2, "Two"),
  ToggleButton.shinyInput(inputId = "ToggleButton3", value = 3, "Three")
)

ui_ToggleButtonGroup <- CssBaseline(
  Box(
    sx = list(flexDirection = 'row', p = 1, gap = "500px"),
    toggleButtonGroupWidget
  )
)

server_ToggleButtonGroup <- function(input, output, session) {
  observeEvent(input$ToggleButton1, {
    updateToggleButtonGroup.shinyInput(inputId = "ToggleButtonGroup1", value = 1)
  })
  observeEvent(input$ToggleButton2, {
    updateToggleButtonGroup.shinyInput(inputId = "ToggleButtonGroup1", value = 2)
  })
  observeEvent(input$ToggleButton3, {
    updateToggleButtonGroup.shinyInput(inputId = "ToggleButtonGroup1", value = 3)
  })
}

if (interactive()) {
  shinyApp(ui = ui_ToggleButtonGroup, server = server_ToggleButtonGroup)
}
