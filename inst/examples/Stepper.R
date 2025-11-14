library(muiMaterial)
library(shiny)

# https://mui.com/material-ui/react-stepper/#horizontal-stepper
ui_Stepper <- Box(
  sx = list(width = '100%'),
  Box(
    uiOutput(outputId = "basicStepper")
  ),
  Box(
    sx = list(display = "flex", flexDirection = 'row', pt = 2),
    Button.shinyInput(inputId = "backStep", "Back"),
    Button.shinyInput(inputId = "nextStep", "Next"),
    Button.shinyInput(inputId = "reset", "Reset")
  )
)

server_Stepper <- function(input, output, session) {
  stepIndex <- reactiveValues(value = 0)

  # 'Next' button not disabled if value is 3
  observe({
    if(stepIndex$value != 3) updateButton.shinyInput(inputId = "nextStep", disabled = FALSE)
  })
  # 'Next' button disabled if value is 3
  observeEvent(input$nextStep, {
    stepIndex$value <- stepIndex$value + 1
    if(stepIndex$value == 3) updateButton.shinyInput(inputId = "nextStep", disabled = TRUE)
  })
  observeEvent(input$backStep, {
    stepIndex$value <- stepIndex$value - 1
    if(stepIndex$value <= 0) stepIndex$value <- 0
  })
  observeEvent(input$reset, {
    stepIndex$value <- 0
    updateButton.shinyInput(inputId = "nextStep", disabled = FALSE)
  })
  
  output$basicStepper <- renderUI({
    Stepper(
      activeStep = stepIndex$value,
      #alternativeLabel = TRUE,
      #nonLinear = TRUE,
      Step(
        StepLabel("Step 1"),
        StepContent("Content step 1")
      ),
      Step(
        StepLabel("Step 2"),
        StepContent("Content step 2")
      ),
      Step(
        StepLabel("Step 3"),
        StepContent("Content step 3")
      )
    )
  })
}

if (interactive()) {
  shinyApp(ui = ui_Stepper, server = server_Stepper)
}
