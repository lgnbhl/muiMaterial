# https://mui.com/material-ui/customization/dark-mode/
library(muiMaterial)
library(shiny)

ui_ThemeProvider <- ThemeProvider(
  theme = list(
    palette = list(
      mode = "light", # "dark" for dark theme
      # overwrite default theme
      primary = list(
        main = "#ff5252"
      )
    ),
    # Theme variables
    # https://mui.com/material-ui/customization/theme-components/#theme-variables
    typography = list(
      button = list(
        fontSize = "2rem"
      )
    ),
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
      p = 3,
      Button("2rem button", variant = "outlined"),
      Typography(gutterBottom = TRUE, "pretto.fr"),
      Slider.shinyInput(
        inputId = "DiscreteSliderLabel",
        value = 20,
        valueLabelDisplay = "auto",
        'aria-label' = "pretto slider"
      )
    )
  )
)

server_ThemeProvider <- function(input, output, session) {
}

if (interactive()) {
  shinyApp(ui = ui_ThemeProvider, server = server_ThemeProvider)
}
