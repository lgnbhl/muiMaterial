library(muiMaterial)
library(shiny)

# https://mui.com/material-ui/react-radio-button/#radio-group
RadioButtonsGroup <- FormControl(
  FormLabel(id = "demo-controlled-radio-buttons-group", "Gender"),
  RadioGroup.shinyInput(
    inputId = "gender",
    'aria-labelledby' = "demo-controlled-radio-buttons-group",
    name = "controlled-radio-buttons-group",
    value = "female",
    FormControlLabel(value = "female", control = Radio(), label = "Female"),
    FormControlLabel(value = "male", control = Radio(), label = "Male"),
    FormControlLabel(value = "other", control = Radio(), label = "Other")
  )
)

ui_RadioGroup <- muiMaterialPage(
  CssBaseline(
    Box(
      sx = list(p = 2),
      RadioButtonsGroup,
      verbatimTextOutput("selected")
    )
  )
)

server_RadioGroup <- function(input, output, session) {
  output$selected <- renderPrint({ input$gender })
}

if (interactive()) {
  shinyApp(ui = ui_RadioGroup, server = server_RadioGroup)
}
