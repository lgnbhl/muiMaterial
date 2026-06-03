library(muiMaterial)
library(shiny)

# https://mui.com/material-ui/react-bottom-navigation/
# Each BottomNavigationAction carries a `value`; the selected one is reported
# to input$nav. `showLabels = TRUE` keeps every label visible.
# A reactOutput swaps a basic page below as the user navigates.
ui_BottomNavigation <- muiMaterialPage(
  useMaterialIconsFilled = TRUE,
  CssBaseline(),
  Box(
    sx = list(width = 500, maxWidth = "100%", p = 2),
    reactOutput("page"),
    BottomNavigation.shinyInput(
      inputId = "nav",
      value = "recents",
      showLabels = TRUE,
      BottomNavigationAction(
        label = "Recents",
        value = "recents",
        icon = Icon("restore")
      ),
      BottomNavigationAction(
        label = "Favorites",
        value = "favorites",
        icon = Icon("favorite")
      ),
      BottomNavigationAction(
        label = "Nearby",
        value = "nearby",
        icon = Icon("location_on")
      )
    )
  )
)

server_BottomNavigation <- function(input, output, session) {
  pages <- list(
    recents = list(
      title = "Recents",
      body = "Pages you visited recently show up here."
    ),
    favorites = list(
      title = "Favorites",
      body = "Items you marked as favorite show up here."
    ),
    nearby = list(
      title = "Nearby",
      body = "Places close to your location show up here."
    )
  )

  output$page <- renderReact({
    page <- pages[[input$nav]]
    Box(
      sx = list(p = 2, minHeight = 120),
      Typography(page$title, variant = "h5", gutterBottom = TRUE),
      Typography(page$body, color = "text.secondary")
    )
  })
}

if (interactive()) {
  shinyApp(ui = ui_BottomNavigation, server = server_BottomNavigation)
}
