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

ui_ButtonGroup <- muiMaterialPage(
  CssBaseline(
    Box(
      sx = list(p = 2),
      BasicButtonGroup,
      verbatimTextOutput("clicked")
    )
  )
)

server_ButtonGroup <- function(input, output, session) {
  output$clicked <- renderPrint({
    list(
      One   = input$BasicButtonGroup1,
      Two   = input$BasicButtonGroup2,
      Three = input$BasicButtonGroup3
    )
  })
}

if (interactive()) {
  shinyApp(ui = ui_ButtonGroup, server = server_ButtonGroup)
}
