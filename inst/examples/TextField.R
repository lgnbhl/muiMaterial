library(shiny)
library(shinyMaterialUI)

ui_TextField <- shinyMaterialUIPage(
  CssBaseline(
    # https://mui.com/material-ui/react-text-field/#basic-textfield
    Box(
      component = "form",
      sx = list('& > :not(style)' = list(m = 1, width = '25ch')),
      noValidate = TRUE,
      autoComplete = "off",
      TextField.shinyInput(
        inputId = "BasicTextFields1",
        value = "Hello World",
        id = "outlined-basic",
        label = "Outlined",
        variant="outlined"
      ),
      TextField.shinyInput(
        inputId = "BasicTextFields2",
        id = "filled-basic",
        label = "Filled",
        variant="filled"
      ),
      TextField.shinyInput(
        inputId = "BasicTextFields3",
        id = "standard-basic",
        label = "Standard",
        variant = "standard"
      ),
      Stack(
        spacing = 2,
        direction = "row",
        verbatimTextOutput("BasicTextFieldsValue1"),
        verbatimTextOutput("BasicTextFieldsValue2"),
        verbatimTextOutput("BasicTextFieldsValue3")
      )
    ),
    # https://mui.com/material-ui/react-text-field/#icons
    Box(
      spacing = 2,
      direction = "row",
      sx = list('& > :not(style)' = list(m = 1)),
      TextField.shinyInput(
        inputId = "inputWithIcon1",
        id = "input-with-icon-textfield",
        label = "TextField",
        slotProps = list(
          input = list(
            startAdornment = list(
              InputAdornment(
                position = "start",
                shiny::icon("circle-user")
              )
            )
          )
        ),
        variant = "standard"
      ),
      verbatimTextOutput("inputWithIconValue1"),
      Box(
        sx = list(display = 'flex', alignItems = 'flex-end'),
        Box(
          sx = list(mr = 1, my = 0.5),
          shiny::icon("circle-user")
        ),
        TextField.shinyInput(
          inputId = "inputWithIcon2",
          id = "input-with-sx",
          label = "With sx",
          variant = "standard"
        )
      ),
      verbatimTextOutput("inputWithIconValue2")
    )
  )
)

server_TextField <- function(input, output, session) {
  output$BasicTextFieldsValue1 <- renderText({
    paste(input$BasicTextFields1)
  })
  output$BasicTextFieldsValue2 <- renderText({
    paste(input$BasicTextFields2)
  })
  output$BasicTextFieldsValue3 <- renderText({
    paste(input$BasicTextFields3)
  })
  output$inputWithIconValue1 <- renderText({
    paste(input$inputWithIcon1)
  })
  output$inputWithIconValue2 <- renderText({
    paste(input$inputWithIcon2)
  })
}

if (interactive()) {
  shinyApp(ui = ui_TextField, server = server_TextField)
}
