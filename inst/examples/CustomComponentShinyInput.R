# Adapted from: https://github.com/Appsilon/shiny.fluent/blob/main/inst/examples/TextField2.R

library(shiny)
library(muiMaterial)

# Using custom handler to convert input to uppercase
CustomComponents <- tags$script(HTML("(function() {
  const { InputAdapter } = jsmodule['@/shiny.react'];
  const { TextField } = jsmodule['@mui/material'];
  const CustomComponents = jsmodule['CustomComponents'] ??= {};

  CustomComponents.UpperCaseTextField = InputAdapter(TextField, (value, setValue) => ({
    value: value.toUpperCase(),
    onChange: (e, v) => { setValue(e.target.value.toUpperCase()) ; e.stopPropagation() },
  }));
})();"))

UpperCaseTextField <- function(inputId, ..., value = defaultValue) {
  shiny.react::reactElement(
    module = "CustomComponents",
    name = "UpperCaseTextField",
    props = shiny.react::asProps(inputId = inputId, ..., value = ""),
    deps = muiMaterial:::muiMaterialDependency()
  )
}

ui_CustomComponentShinyInput <- tagList(
  CustomComponents,
  UpperCaseTextField("uppercase_text", value = ""),
  textOutput("text")
)

server_CustomComponentShinyInput <- function(input, output, session) {
  output$text <- renderText(input$uppercase_text)
}


if (interactive()) {
  shinyApp(ui_CustomComponentShinyInput, server_CustomComponentShinyInput)
}
