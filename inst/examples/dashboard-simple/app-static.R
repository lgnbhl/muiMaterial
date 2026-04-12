library(muiMaterial)
library(reactRouter)
library(shiny)

# https://mui.com/material-ui/react-drawer/#clipped-under-the-app-bar
drawer_width <- 200

drawer_nav <- Box(
  sx = list(overflow = "auto"),
  List(
    dense = TRUE,
    reactRouter::NavLink(
      style = list(textDecoration = "none", color = "black"),
      to = "/",
      'aria-label' = "Home",
      ListItem(
        key = 0,
        disablePadding = TRUE,
        sx = list(display = "block"),
        ListItemButton(
          ListItemIcon(shiny::icon("house")),
          ListItemText(primary = "Home")
        )
      )
    ),
    reactRouter::NavLink(
      style = list(textDecoration = "none", color = "black"),
      to = "/analytics",
      'aria-label' = "Analytics",
      ListItem(
        key = 1,
        disablePadding = TRUE,
        sx = list(display = "block"),
        ListItemButton(
          ListItemIcon(shiny::icon("chart-bar")),
          ListItemText(primary = "Analytics")
        )
      )
    )
  )
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
  CssBaseline(),
  reactRouter::RouterProvider(
    Route(
      path = "/",
      element = Box(
        sx = list(display = "flex"),
        AppBar(
          position = "fixed",
          sx = list(
            zIndex = JS("(theme) => theme.zIndex.drawer + 1")
          ),
          Toolbar(
            # Hamburger button — visible on mobile only
            IconButton(
              id = "nav-trigger",
              color = "inherit",
              edge = "start",
              sx = list(mr = 2, display = list(sm = "none")),
              shiny::icon("bars")
            ),
            Typography(
              "Dashboard",
              variant = "h6",
              noWrap = TRUE,
              component = "div"
            )
          )
        ),
        Box(
          component = "nav",
          sx = list(
            width = list(sm = drawer_width),
            flexShrink = list(sm = 0)
          ),
          # Mobile drawer — triggered by the hamburger button, no server needed
          Drawer.triggerId(
            triggerId = "nav-trigger",
            anchor = "left",
            width = drawer_width,
            sx = list(
              display = list(xs = "block", sm = "none"),
              "& .MuiDrawer-paper" = list(
                boxSizing = "border-box",
                width = drawer_width
              )
            ),
            Toolbar(),
            drawer_nav
          ),
          # Permanent drawer — desktop only
          Drawer(
            variant = "permanent",
            sx = list(
              display = list(xs = "none", sm = "block"),
              width = drawer_width,
              flexShrink = 0,
              "& .MuiDrawer-paper" = list(
                width = drawer_width,
                boxSizing = "border-box"
              )
            ),
            Toolbar(),
            drawer_nav
          )
        ),
        Box(
          component = "main",
          sx = list(flexGrow = 1, p = 3),
          Toolbar(),
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
