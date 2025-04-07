# https://mui.com/material-ui/customization/dark-mode/
library(shinyMaterialUI)
library(shiny)

ui_ThemeProvider <- ThemeProvider(
  theme = list(
    palette = list(
      mode = "light" # "dark" for dark theme
      # overwrite default theme
      # primary = list(
      #   main = "#ff5252"
      # )
    )
  ),
  CssBaseline(
    Box(
      p = 3,
      Typography("Test", color = "primary")
    )
  )
)

server_ThemeProvider <- function(input, output, session) {
}

if (interactive()) {
  shinyApp(ui = ui_ThemeProvider, server = server_ThemeProvider)
}
