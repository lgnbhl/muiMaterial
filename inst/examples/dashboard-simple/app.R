library(muiMaterial)
library(reactRouter)
library(htmltools)
library(shiny)

# Define drawer width
drawer_width <- 240

# Menu items configuration (icon names for shiny::icon())
menu_items <- list(
  list(text = "Home", icon = "home", path = "/"),
  list(text = "Analytics", icon = "bar-chart", path = "/analytics")
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

# Drawer content
create_drawer_content <- function() {
  Box(
    Toolbar(
      Typography(
        "muiMaterial App",
        variant = "h6",
        noWrap = TRUE,
        component = "div"
      )
    ),
    List(
      lapply(menu_items, function(item) {
        ListItem(
          disablePadding = TRUE,
          sx = list(display = 'block'),
          NavLink(
            to = item$path,
            style = list(textDecoration = "none", color = "black"),
            ListItemButton(
              sx = list(
                "&.active" = list(
                  backgroundColor = "primary.light",
                  color = "primary.contrastText",
                  "& .MuiListItemIcon-root" = list(
                    color = "primary.contrastText"
                  )
                )
              ),
              ListItemIcon(shiny::icon(item$icon)),
              ListItemText(primary = item$text)
            )
          )
        )
      })
    )
  )
}

# Main app component
ui <- muiMaterialPage(
  CssBaseline(),
  RouterProvider(
    Route(
      path = "/",
      element = Box(
        sx = list(display = "flex"),

        # AppBar
        AppBar(
          position = "fixed",
          sx = list(
            width = list(sm = sprintf("calc(100%% - %dpx)", drawer_width)),
            ml = list(sm = sprintf("%dpx", drawer_width))
          ),
          Toolbar(
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

        # Navigation Drawer
        Box(
          component = "nav",
          sx = list(
            width = list(sm = drawer_width),
            flexShrink = list(sm = 0)
          ),
          # Temporary drawer for mobile (no server logic needed)
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
            create_drawer_content()
          ),
          # Permanent drawer for desktop
          Drawer(
            variant = "permanent",
            open = TRUE,
            sx = list(
              display = list(xs = "none", sm = "block"),
              "& .MuiDrawer-paper" = list(
                boxSizing = "border-box",
                width = drawer_width
              )
            ),
            create_drawer_content()
          )
        ),

        # Main content area renders the matched child route
        Box(
          component = "main",
          sx = list(
            flexGrow = 1,
            p = 3,
            width = list(sm = sprintf("calc(100%% - %dpx)", drawer_width))
          ),
          Toolbar(),
          Container(
            maxWidth = "lg",
            Outlet()
          )
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
