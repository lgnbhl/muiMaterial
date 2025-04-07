library(shinyMaterialUI)
library(shiny)

# original React code here: https://mui.com/material-ui/react-card/#media
ui_Card <- CssBaseline(
  Card(sx = list(maxWidth = 345),
       CardMedia(
         sx = list(height = 140),
         image = "https://mui.com/static/images/cards/contemplative-reptile.jpg",
         title = "green iguana"
       ),
       CardContent(
         Typography(
           gutterBottom = TRUE, variant = "h5", component = "div",
           "Lizard"
         ),
         Typography(variant = "body2", sx = list(color = "text.secondary"),
                    "Lizards are a widespread group of squamate reptiles, with over 6,000
        species, ranging across all continents except Antarctica"
         )
       ),
       CardActions(
         Button(size = "small", "Share"),
         Button(size = "small", "Learn More")
       )
  )
)

server_Card <- function(input, output, session) { }

if (interactive()) {
  shinyApp(ui = ui_Card, server = server_Card)
}
