library(muiMaterial)
library(shiny)

# https://mui.com/material-ui/react-switch/#label
ui_Switch <- Box(
  FormControlLabel(
    control = Switch.shinyInput(
      inputId = "Switch1",
      value = TRUE
    ), 
    label = "Label"
  ),
  verbatimTextOutput("SwitchValue1")
)

server_Switch <- function(input, output, session) {
  output$SwitchValue1 <- renderText({
    paste(input$Switch1)
  })
}

if (interactive()) {
  shinyApp(ui = ui_Switch, server = server_Switch)
}
