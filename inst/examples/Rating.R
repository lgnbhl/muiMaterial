library(muiMaterial)
library(shiny)

# https://mui.com/material-ui/react-rating/#rating-precision
HalfRating <- Stack(
  spacing = 1,
  Typography(component = "legend", "Rating with precision argument"),
  Rating.shinyInput(
    inputId = "HalfRating1",
    name = "half-rating",
    value = 2.5,
    precision = 0.5
  ),
  verbatimTextOutput("HalfRatingValue1"),
  Typography(component = "legend", "Read only"),
  Rating.shinyInput(
    inputId = "HalfRating2",
    name = "half-rating-read",
    value = 2.5,
    precision = 0.5,
    readOnly = TRUE
  ),
  verbatimTextOutput("HalfRatingValue2")
)

ui_Rating <- muiMaterialPage(
  CssBaseline(
    HalfRating
  )
)

server_Rating <- function(input, output, session) {
  output$HalfRatingValue1 <- renderText({
    paste(input$HalfRating1)
  })
  output$HalfRatingValue2 <- renderText({
    paste(input$HalfRating2)
  })
}

if (interactive()) {
  shinyApp(ui = ui_Rating, server = server_Rating)
}
