library(shiny)
library(muiMaterial)
library(reactRouter)

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

# Menu items configuration
# https://mui.com/material-ui/material-icons/
menu_items <- list(
  list(icon = "home", label = "Home", path = "/", element = home_page()),
  list(icon = "analytics", label = "Analytics", path = "/analytics", element = analytics_page())
)

sidebar_nav <- Box(
  sx = list(display = "flex", flexDirection = "column", gap = 0.5),
  lapply(menu_items, function(item) {
    Tooltip(
      key = item$path,
      title = item$label,
      placement = "right",
      arrow = TRUE,
      NavLink(
        to = item$path,
        # end = TRUE: only mark active on an exact URL match, so "/"
        # doesn't stay active on every nested route
        end = TRUE,
        'aria-label' = item$label,
        style = list(color = "inherit"),
        IconButton(
          sx = list(
            m = 0.5,
            "&.active, .active &" = list(
              bgcolor = "action.selected",
              color = "primary.main"
            )
          ),
          Icon(item$icon, baseClassName = "material-icons-outlined")
        )
      )
    )
  })
)

ui <- muiMaterialPage(
  useFontRoboto = TRUE,
  useMaterialIconsOutlined = TRUE,
  CssBaseline(),
  RouterProvider(
    Route(
      path = "/",
      element = Box(
        sx = list(
          display = "flex",
          height = "100vh",
          bgcolor = "background.paper"
        ),

        # Icon-only sidebar
        Box(
          component = "nav",
          sx = list(
            width = 80,
            display = "flex",
            flexDirection = "column",
            alignItems = "center",
            py = 2,
            gap = 2,
            borderRight = 1,
            borderColor = "divider",
            bgcolor = "background.default"
          ),

          # Logo
          Box(
            sx = list(
              width = 50,
              height = 50,
              borderRadius = "50%",
              bgcolor = "primary.main",
              color = "primary.contrastText",
              display = "flex",
              alignItems = "center",
              justifyContent = "center",
              fontWeight = "bold",
              fontSize = 20
            ),
            "MUI"
          ),

          sidebar_nav
        ),

        # Main content — renders the matched child route
        Box(
          component = "main",
          sx = list(flexGrow = 1, p = 3, overflow = "auto"),
          Outlet()
        )
      ),
      lapply(menu_items, function(item) {
        if (item$path == "/") {
          Route(index = TRUE, element = item$element)
        } else {
          Route(path = sub("^/", "", item$path), element = item$element)
        }
      })
    )
  )
)

server <- function(input, output, session) {}

shinyApp(ui, server)

# Save static dashboard as an HTML file
# htmltools::save_html(ui, "dashboard-static.html")
# See the dashboard
# htmltools::browsable(ui)
