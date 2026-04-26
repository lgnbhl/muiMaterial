library(shiny)
library(muiMaterial)

df <- data.frame(
  animal = c("dog", "cat", "fish"),
  owner = c("person1", "person1", "person2"),
  stringsAsFactors = FALSE
)

ui_Autocomplete <- Box(
  CssBaseline(),
  p = 2,
  # Recommended: pass a TextField (or any input) as a child. It is cloned
  # with the MUI `params` automatically, so R code stays agnostic to how
  # MUI wires the input internally.
  Autocomplete.shinyInput(
    sx = list(m = 1, minWidth = 120, width = 300),
    inputId = "Autocomplete1",
    options = c("dog", "cat", "fish"),
    TextField(label = "Select animal", placeholder = "Single select")
  ),
  verbatimTextOutput("AutocompleteValue1"),
  FormControl(
    sx = list(m = 1, minWidth = 120, width = 300),
    FormLabel("Multiple selection"),
    # `inputProps` forwards by default to TextField
    Autocomplete.shinyInput(
      inputId = "Autocomplete2",
      multiple = TRUE,
      limitTags = 2,
      inputProps = list(placeholder = "Select multiple animals"),
      options = df$animal
    ),
    FormHelperText("Autocomplete with decorator and limitTag of 2.")
  ),
  verbatimTextOutput("AutocompleteValue2"),
  FormControl(
    sx = list(m = 1, minWidth = 120, width = 300),
    FormLabel("Group selection"),
    # Full control: pass `renderInput` as a JS() callback.
    Autocomplete.shinyInput(
      inputId = "Autocomplete3",
      disableClearable = TRUE,
      options = df,
      value = list(animal = df$animal[1], owner = df$owner[1]),
      groupBy = JS("function(option) { return option.owner; }"),
      getOptionLabel = JS("function(option) { return option.animal; }"),
      renderInput = JS(
        "(params) => React.createElement(
             window.jsmodule['@mui/material'].TextField,
             { ...params, label: 'Animal', size: 'small' }
           )"
      )
    )
  ),
  tableOutput("AutocompleteValue3")
)

server_Autocomplete <- function(input, output) {
  output$AutocompleteValue1 <- renderText({
    paste(input$Autocomplete1)
  })
  output$AutocompleteValue2 <- renderText({
    paste(input$Autocomplete2)
  })
  output$AutocompleteValue3 <- renderTable({
    as.data.frame(input$Autocomplete3)
  })
}

if (interactive()) {
  shinyApp(ui = ui_Autocomplete, server = server_Autocomplete)
}
