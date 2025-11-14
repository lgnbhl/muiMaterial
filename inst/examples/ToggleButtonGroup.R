library(muiMaterial)
library(shiny)

# https://mui.com/material-ui/react-toggle-button/#exclusive-selection
ToggleButtonGroup <- ToggleButtonGroup.shinyInput(
  inputId = "ToggleButtonGroup1",
  value = 1,
  ToggleButton.shinyInput(inputId = "ToggleButton1", value = 1, "One"),
  ToggleButton.shinyInput(inputId = "ToggleButton2", value = 2, "Two"),
  ToggleButton.shinyInput(inputId = "ToggleButton3", value = 3, "Three")
)

ui_ToggleButtonGroup <- CssBaseline(
  Box(
    sx = list(flexDirection = 'row', p = 1, gap = "500px"),
    ToggleButtonGroup
  )
)

server_ToggleButtonGroup <- function(input, output, session) {
  rv <- reactiveValues(value = 1)

  observeEvent(input$ToggleButton1, { rv$value <- 1 })
  observeEvent(input$ToggleButton2, { rv$value <- 2 })
  observeEvent(input$ToggleButton3, { rv$value <- 3 })
  observeEvent(c(input$ToggleButton1, input$ToggleButton2, input$ToggleButton3), {
    updateToggleButtonGroup.shinyInput(inputId = "ToggleButtonGroup1", value = rv$value)
  })
}

if (interactive()) {
  shinyApp(ui = ui_ToggleButtonGroup, server = server_ToggleButtonGroup)
}
