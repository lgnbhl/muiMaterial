library(muiMaterial)
library(shiny)

# https://mui.com/material-ui/react-slider/#custom-marks
DiscreteSliderLabel <- Box(
  sx = list(width = 300),
  Slider.shinyInput(
    inputId = "DiscreteSliderLabel",
    value = 80,
    step = 10,
    marks = list(
      list(value = 0, label = "0°C"),
      list(value = 20, label = "20°C"),
      list(value = 37, label = "37°C"),
      list(value = 100, label = "100°C")
    ),
    valueLabelDisplay = "on",
    'aria-label' = "Always visible"
  ),
  verbatimTextOutput("SliderValue1")
)

ui_Slider <- CssBaseline(
  Stack(
    sx = list(flexDirection = 'row', p = 6, gap = "500px"),
    DiscreteSliderLabel
  )
)

server_Slider <- function(input, output, session) {
  output$SliderValue1 <- renderText({
    paste(input$DiscreteSliderLabel)
  })
}

if (interactive()) {
  shinyApp(ui = ui_Slider, server = server_Slider)
}
