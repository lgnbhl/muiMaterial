library(shiny)
library(muiMaterial)
library(reactRouter)

# Main navigation items with icons
# https://mui.com/material-ui/material-icons/
main_links_data <- list(
  list(icon = "home", label = "Home", path = "/"),
  list(icon = "analytics", label = "Analytics", path = "/analytics")
)

# Page components
home_page <- function() {
  Box(
    Typography("Dashboard", variant = "h4", gutterBottom = TRUE),
    Typography(
      "Welcome to your dashboard. This is the main overview page.",
      variant = "body1",
      color = "text.secondary"
    )
  )
}

analytics_page <- function() {
  Box(
    Typography("Analytics", variant = "h4", gutterBottom = TRUE),
    Typography(
      "View your analytics and statistics here.",
      variant = "body1",
      color = "text.secondary"
    )
  )
}

ui <- muiMaterialPage(
  useFontRoboto = TRUE,
  useMaterialIconsOutlined = TRUE,
  CssBaseline(),
  RouterProvider(
    Route(
      path = "/",
      element = Paper(
        elevation = 3,
        sx = list(
          display = "flex",
          height = "100vh",
          backgroundColor = "background.paper"
        ),

        # Left sidebar with icon navigation
        Box(
          sx = list(
            width = 80,
            display = "flex",
            flexDirection = "column",
            alignItems = "center",
            py = 2,
            borderRight = 1,
            borderColor = "divider",
            backgroundColor = "background.default"
          ),

          # Logo
          Box(
            sx = list(
              width = 50,
              height = 50,
              borderRadius = "50%",
              backgroundColor = "primary.main",
              display = "flex",
              alignItems = "center",
              justifyContent = "center",
              color = "white",
              fontWeight = "bold",
              fontSize = 20,
              mb = 2
            ),
            "MUI"
          ),

          # Main navigation icons
          Box(
            sx = list(
              display = "flex",
              flexDirection = "column",
              gap = 0.5
            ),
            lapply(main_links_data, function(link) {
              Tooltip(
                title = link$label,
                placement = "right",
                arrow = TRUE,
                NavLink(
                  to = link$path,
                  IconButton(
                    Icon(
                      link$icon,
                      baseClassName = "material-icons-outlined",
                      sx = list(m = 1)
                    )
                  )
                )
              )
            })
          )
        ),

        # Right panel renders the matched child route
        Box(
          component = "main",
          sx = list(flexGrow = 1, p = 3),
          Outlet()
        )
      ),
      Route(index = TRUE, element = home_page()),
      Route(path = "analytics", element = analytics_page())
    )
  )
)

server <- function(input, output, session) {}

shinyApp(ui, server)

# Save static dashboard as an HTML file
# htmltools::save_html(ui, "dashboard-static.html")
# See the dashboard
# htmltools::browsable(ui)
