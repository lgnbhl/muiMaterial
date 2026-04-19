library(shiny)
library(muiMaterial)

ui_Pagination <- CssBaseline(
  Box(
    sx = list(p = 2),
    Pagination.shinyInput(
      inputId = "pagination_page",
      value = 1,
      count = 10,
      color = "primary"
    ),
    Box(
      sx = list(mt = 2),
      verbatimTextOutput("PaginationValue")
    )
  )
)

server_Pagination <- function(input, output, session) {
  output$PaginationValue <- renderText({
    paste("Current page:", input$pagination_page)
  })
}

if (interactive()) {
  shinyApp(ui = ui_Pagination, server = server_Pagination)
}
