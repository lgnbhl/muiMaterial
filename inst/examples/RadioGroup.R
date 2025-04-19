library(shinyMaterialUI)
library(shiny)

# https://mui.com/material-ui/react-radio-button/#radio-group
# TODO: use .shinyInput to get and update values in the server
RadioButtonsGroup <- FormControl(
  FormLabel(id = "demo-controlled-radio-buttons-group", "Gender"),
  RadioGroup(
    'aria-labelledby' = "demo-controlled-radio-buttons-group",
    name = "controlled-radio-buttons-group",
    value = "female",
    FormControlLabel(value = "female", control = Radio(), label = "Female"),
    FormControlLabel(value = "male", control = Radio(), label = "Male"),
    FormControlLabel(value = "other", control = Radio(), label = "Other")
  )
)

ui_RadioGroup <- CssBaseline(
  Box(
    sx = list(flexDirection = 'row', p = 1, gap = "500px"),
    RadioButtonsGroup
  )
)

server_RadioGroup <- function(input, output, session) {}

if (interactive()) {
  shinyApp(ui = ui_RadioGroup, server = server_RadioGroup)
}
