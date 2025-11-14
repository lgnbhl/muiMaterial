library(shiny)
library(muiMaterial)
library(shiny.react)

df <- data.frame(
  animal = c("dog", "cat", "fish"),
  owner = c("person1", "person1", "person2")
)

ui_Autocomplete <- CssBaseline(
  Box(
    p = 2,
    Autocomplete.shinyInput(
      sx = list(m = 1, minWidth = 120, width = 300),
      inputId = "Autocomplete1",
      placeholder = "Single select",
      inputProps = list(label = "Select animal"),
      options = c("dog", "cat", "fish")
    ),
    verbatimTextOutput("AutocompleteValue1"),
    FormControl(
      sx = list(m = 1, minWidth = 120, width = 300),
      FormLabel("Multiple selection"),
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
      Autocomplete.shinyInput(
        inputId = "Autocomplete3",
        placeholder = "Select by group",
        disableClearable = TRUE,
        options = df,
        value = shiny.react::JS(paste0("{ animal: '", df$animal[1],"', owner: '", df$owner[1],"' }")),
        groupBy = shiny.react::JS("(option) => option.owner"),
        getOptionLabel = shiny.react::JS("(option) => option.animal")
      )
    ),
    tableOutput("AutocompleteValue3")
  )
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
