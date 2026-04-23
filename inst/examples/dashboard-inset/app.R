library(muiMaterial)
library(reactRouter)
library(shiny)

# https://mui.com/material-ui/react-drawer/#responsive-drawer
drawer_width <- 240

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

# Menu items configuration (icon names for shiny::icon())
menu_items <- list(
  list(text = "Home", icon = "house", path = "/", element = home_page()),
  list(
    text = "Analytics",
    icon = "chart-bar",
    path = "/analytics",
    element = analytics_page()
  )
)

drawer_content <- Box(
  Toolbar(
    Typography(
      "muiMaterial App",
      variant = "h6",
      noWrap = TRUE,
      component = "div"
    )
  ),
  Divider(),
  List(
    lapply(menu_items, function(item) {
      ListItem(
        key = item$path,
        disablePadding = TRUE,
        NavLink(
          to = item$path,
          # end = TRUE: only mark active on an exact URL match, so "/"
          # doesn't stay active on every nested route
          end = TRUE,
          style = list(
            textDecoration = "none",
            color = "inherit",
            width = "100%"
          ),
          ListItemButton(
            sx = list(
              "&.active, .active &" = list(
                bgcolor = "action.selected"
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

ui <- muiMaterialPage(
  CssBaseline(),
  RouterProvider(
    router = createHashRouter(
      Route(
        path = "/",
        element = Box(
          sx = list(display = "flex"),

          # AppBar — inset to the right of the permanent drawer on desktop
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

          # Navigation drawers
          Box(
            component = "nav",
            sx = list(
              width = list(sm = drawer_width),
              flexShrink = list(sm = 0)
            ),
            # Mobile drawer — opens from the hamburger button, no server needed
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
              drawer_content
            ),
            # Permanent drawer — desktop only
            Drawer(
              variant = "permanent",
              sx = list(
                display = list(xs = "none", sm = "block"),
                "& .MuiDrawer-paper" = list(
                  boxSizing = "border-box",
                  width = drawer_width
                )
              ),
              drawer_content
            )
          ),

          # Main content — renders the matched child route
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
)

server <- function(input, output, session) {}

shinyApp(ui, server)

# Save static dashboard as an HTML file
# htmltools::save_html(ui, "dashboard-static.html")
# See the dashboard
# htmltools::browsable(ui)
