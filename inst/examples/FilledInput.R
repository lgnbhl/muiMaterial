library(muiMaterial)
library(shiny)

# https://mui.com/material-ui/api/filled-input/
# FilledInput is the "filled" variant of the base input. Like Input and
# OutlinedInput, its value is reported to the server (debounced ~250ms).
ui_FilledInput <- muiMaterialPage(
  CssBaseline(),
  Box(
    sx = list(p = 2),
    FormControl(
      variant = "filled",
      InputLabel(htmlFor = "filled", "Name"),
      FilledInput.shinyInput(
        inputId = "filled",
        value = ""
      )
    ),
    verbatimTextOutput("filledValue")
  )
)

server_FilledInput <- function(input, output, session) {
  output$filledValue <- renderText({
    input$filled
  })
}

if (interactive()) {
  shinyApp(ui = ui_FilledInput, server = server_FilledInput)
}
