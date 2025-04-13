# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/MenuContent.tsx
library(reactRouter)

# routing links with 'reactRouter' added below
MenuContent <- function(){
  Stack(
    sx = list(flexGrow = 1, p = 1, justifyContent = 'space-between'),
    List(
      dense = TRUE,
      reactRouter::NavLink.shinyInput(
        inputId = "reactRouterHome",
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
      reactRouter::NavLink.shinyInput(
        inputId = "reactRouterAnalytics",
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
      reactRouter::NavLink.shinyInput(
        inputId = "reactRouterClients",
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
      reactRouter::NavLink.shinyInput(
        inputId = "reactRouterTasks",
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
}
