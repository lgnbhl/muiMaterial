# Add Material Symbols (icons) and Roboto font from Google Font API
library(htmltools)
library(shiny)

ui_muiMaterialPage <- muiMaterialPage(
  addFontRoboto = TRUE,
  materialSymbols = c("home", "search"), # list relevant icons for your app
  Box(
    sx = list(m = 2),
    Typography("Roboto font from Google Font API"),
    Badge(
      sx = list(mt = 2),
      badgeContent = 4, 
      color = "primary",
      htmltools::span(class = "material-symbols-outlined", "home") # or "search"
    )
  )
)

server_muiMaterialPage <- function(input, output, session) {}

if (interactive()) {
  shinyApp(ui = ui_muiMaterialPage, server = server_muiMaterialPage)
}
