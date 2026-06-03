library(muiMaterial)
library(shiny)

# https://mui.com/material-ui/react-select/#native-select
# NativeSelect renders a real <select> with <option> children. The selected
# option's `value` is reported to input$age.
ui_NativeSelect <- muiMaterialPage(
  CssBaseline(),
  Box(
    sx = list(p = 2, minWidth = 120),
    FormControl(
      fullWidth = TRUE,
      InputLabel(variant = "standard", htmlFor = "native-age", "Age"),
      NativeSelect.shinyInput(
        inputId = "age",
        value = "30",
        inputProps = list(name = "age", id = "native-age"),
        tags$option(value = "10", "Ten"),
        tags$option(value = "20", "Twenty"),
        tags$option(value = "30", "Thirty")
      )
    ),
    verbatimTextOutput("ageValue")
  )
)

server_NativeSelect <- function(input, output, session) {
  output$ageValue <- renderPrint({
    input$age
  })
}

if (interactive()) {
  shinyApp(ui = ui_NativeSelect, server = server_NativeSelect)
}
