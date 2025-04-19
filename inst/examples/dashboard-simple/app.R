# https://mui.com/material-ui/react-drawer/#clipped-under-the-app-bar
library(shinyMaterialUI)
library(reactRouter)

ui <- reactRouter::HashRouter(
  Box(
    sx = list(display = 'flex'),
    CssBaseline(
      AppBar(
        position="fixed",
        sx = list(
          zIndex = JS("(theme) => theme.zIndex.drawer + 1")
        ),
        Toolbar(
          Typography(
            "Dashboard",
            variant = "h6",
            noWrap = TRUE,
            component = "div"
          )
        )
      ),
      Drawer(
        variant = "permanent",
        sx = list(
          width = 250,
          flexShrink = 0,
          "[`& .MuiDrawer-paper`]" = list(width = 250, boxSizing = 'border-box')
        ),
        Toolbar(),
        Box(
          sx = list(overflow = 'auto'),
          List(
            dense = TRUE,
            reactRouter::NavLink(
              style = list(textDecoration = "none", color = "white"),
              to = "/",
              'aria-label' = "Home",
              ListItem(
                key = 0,
                disablePadding = TRUE,
                sx = list(display = 'block'),
                ListItemButton(
                  #selected = JS("0 === 0"),
                  ListItemIcon(
                    shiny::icon("house")
                  ),
                  ListItemText(
                    primary = "Home"
                  )
                )
              )
            ),
            reactRouter::NavLink(
              style = list(textDecoration = "none", color = "white"),
              to = "/analytics",
              'aria-label' = "Home",
              ListItem(
                key = 0,
                disablePadding = TRUE,
                sx = list(display = 'block'),
                ListItemButton(
                  #selected = JS("1 === 0"),
                  ListItemIcon(
                    shiny::icon("chart-bar")
                  ),
                  ListItemText(
                    primary = "Analytics"
                  )
                )
              )
            ),
            reactRouter::NavLink(
              style = list(textDecoration = "none", color = "white"),
              to = "/clients",
              'aria-label' = "Home",
              ListItem(
                key = 0,
                disablePadding = TRUE,
                sx = list(display = 'block'),
                ListItemButton(
                  #selected = JS("2 === 0"),
                  ListItemIcon(
                    shiny::icon("people-group")
                  ),
                  ListItemText(
                    primary = "Clients"
                  )
                )
              )
            ),
            reactRouter::NavLink(
              style = list(textDecoration = "none", color = "white"),
              to = "/tasks",
              'aria-label' = "Tasks",
              ListItem(
                key = 0,
                disablePadding = TRUE,
                sx = list(display = 'block'),
                ListItemButton(
                  #selected = JS("3 === 0"),
                  ListItemIcon(
                    shiny::icon("list")
                  ),
                  ListItemText(
                    primary = "Tasks"
                  )
                )
              )
            )
          )
        )
      ),
      Box(
        component = "main",
        sx = list(
          flexGrow = 1
        ),
        Toolbar(),
        Routes(
          Route(
            path = "/",
            element = Box(
              sx = list(margin = 2),
              Typography("Home", component = "h2", variant = "h6"),
              Typography("Content home")
            )
          ),
          Route(
            path = "/analytics",
            element = Box(
              sx = list(margin = 2),
              Typography("Analytics", component = "h2", variant = "h6"),
              Typography("Content analytics")
            )
          ),
          Route(
            path = "/clients",
            element = Box(
              sx = list(margin = 2),
              Typography("Clients", component = "h2", variant = "h6"),
              Typography("Content clients")
            )
          ),
          Route(
            path = "/tasks",
            element = Box(
              sx = list(margin = 2),
              Typography("Tasks", component = "h2", variant = "h6"),
              Typography("Content tasks")
            )
          )
        )
      )
    )
  )
)

server <- function(input, output, session) {}

if (interactive()) {
  shinyApp(ui = ui, server = server)
}
