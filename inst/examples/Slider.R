library(shinyMaterialUI)
library(shiny)

# https://mui.com/material-ui/react-slider/#custom-marks
DiscreteSliderLabel <- Box(
  sx = list(width = 300),
  Slider.shinyInput(
    inputId = "DiscreteSliderLabel",
    value = 80,
    step = 10,
    marks = data.frame(value = c(0, 20, 37, 100), label = c("0°C", "20°C", "37°C", "100°C")),
    valueLabelDisplay = "on",
    'aria-label' = "Always visible"
  ),
  verbatimTextOutput("SliderValue1")
)

# https://mui.com/material-ui/react-slider/#customization
PrettoSlider <- ThemeProvider(
  theme = list(
    components = list(
      MuiSlider = list(
        styleOverrides = list(
          root = list(
            color = '#52af77',
            height = 8,
            '& .MuiSlider-track' = list(
              border = 'none'
            ),
            '& .MuiSlider-thumb' = list(
              height = 24,
              width = 24,
              backgroundColor = '#fff',
              border = '2px solid currentColor',
              '&:focus, &:hover, &.Mui-active, &.Mui-focusVisible' = list(
                boxShadow = 'inherit'
              ),
              '&::before' = list(
                display = 'none'
              )
            ),
            '& .MuiSlider-valueLabel' = list(
              lineHeight = 1.2,
              fontSize = 12,
              background = 'unset',
              padding = 0,
              width = 32,
              height = 32,
              borderRadius = '50% 50% 50% 0',
              backgroundColor = '#52af77',
              transformOrigin = 'bottom left',
              transform = 'translate(50%, -100%) rotate(-45deg) scale(0)',
              '&::before' = list( display = 'none' ),
              '&.MuiSlider-valueLabelOpen' = list(
                transform = 'translate(50%, -100%) rotate(-45deg) scale(1)'
              ),
              '& > *' = list(
                transform = 'rotate(45deg)'
              )
            )
          )
        )
      )
    )
  ),
  CssBaseline(
    Box(
      Slider.shinyInput(
        inputId = "DiscreteSliderLabel",
        value = 20,
        valueLabelDisplay = "auto",
        'aria-label' = "pretto slider"
      )
    )
  )
)

ui_Slider <- CssBaseline(
  Stack(
    sx = list(flexDirection = 'row', p = 6, gap = "500px"),
    DiscreteSliderLabel,
    PrettoSlider
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
