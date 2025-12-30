library(muiMaterial)
library(reactRouter)
library(htmltools)
library(shiny)

# Define drawer width
drawer_width <- 240

# Menu items configuration
menu_items <- list(
  list(text = "Dashboard", icon = "dashboard", path = "/"),
  list(text = "Analytics", icon = "bar-chart", path = "/analytics"),
  list(text = "Users", icon = "person", path = "/users"),
  list(text = "Settings", icon = "gear", path = "/settings")
)

# Page components
dashboard_page <- function() {
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

users_page <- function() {
  Box(
    Typography("Users", variant = "h4", gutterBottom = TRUE),
    Typography(
      "Information your users.",
      variant = "body1",
      color = "text.secondary"
    )
  )
}

settings_page <- function() {
  Box(
    Typography("Settings", variant = "h4", gutterBottom = TRUE),
    Typography(
      "Configure your application settings.",
      variant = "body1",
      color = "text.secondary"
    )
  )
}

# Drawer content
create_drawer_content <- function() {
  Box(
    Toolbar(
      Typography("muiMaterial App", variant = "h6", noWrap = TRUE, component = "div")
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
ui <- function() {
  muiMaterialPage(
    CssBaseline(
      HashRouter(
        Box(
          sx = list(display = "flex"),
          
          # AppBar
          AppBar(
            position = "fixed",
            sx = list(
              width = list(sm = sprintf("calc(100%% - %dpx)", drawer_width)),
              ml = list(sm = sprintf("%dpx", drawer_width))
            ),
            Toolbar(
              Button.shinyInput(
                inputId = "showDrawer",
                color = "inherit",
                edge = "start",
                sx = list(mr = 2, display = list(sm = "none")),
                shiny::icon("bars")
              ),
              Typography("Dashboard", variant = "h6", noWrap = TRUE, component = "div")
            )
          ),
          
          # Navigation Drawer
          Box(
            component = "nav",
            sx = list(
              width = list(sm = drawer_width),
              flexShrink = list(sm = 0)
            ),
            # Temporary drawer for mobile
            Drawer.shinyInput(
              inputId = "drawer",
              open = FALSE,
              onClose = triggerEvent("hideDrawer"),
              variant = "temporary",
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
          
          # Main content area
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
              Routes(
                Route(path = "/", element = dashboard_page()),
                Route(path = "/analytics", element = analytics_page()),
                Route(path = "/users", element = users_page()),
                Route(path = "/settings", element = settings_page())
              )
            )
          )
        )
      )
    )
  )
}

server <- function(input, output, session) {
  toggleDrawer <- reactiveVal(FALSE)
  observeEvent(input$showDrawer, toggleDrawer(TRUE))
  observeEvent(input$hideDrawer, toggleDrawer(FALSE))
  observeEvent(c(input$showDrawer, input$hideDrawer), {
    updateDrawer.shinyInput(inputId = "drawer", open = toggleDrawer())
  })
}

shinyApp(ui, server)
