# Add Material Symbols (icons) and Roboto font from Google Font API
library(shiny)

ui_muiMaterialPage <- muiMaterialPage(
  useFontRoboto = TRUE,
  useMaterialIconsFilled = TRUE,
  useMaterialIconsOutlined = TRUE,
  Box(
    sx = list(m = 1),
    Typography("Roboto font and Google icons from Google Font API"),
    Icon(
      sx = list(m = 1),
      "home"
    ),
    Icon(
      sx = list(m = 1),
      "home",
      baseClassName = "material-icons-outlined"
    )
  )
)

server_muiMaterialPage <- function(input, output, session) {}

if (interactive()) {
  shinyApp(ui = ui_muiMaterialPage, server = server_muiMaterialPage)
}
