# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/MenuContent.tsx
library(reactRouter)

# routing links with 'reactRouter' added below
MenuContent <- function(){
  Stack(
    sx = list(flexGrow = 1, p = 1, justifyContent = 'space-between'),
    List(
      dense = TRUE,
      # https://github.com/mui/material-ui/issues/32400
      reactRouter::NavLink.shinyInput(
        inputId = "reactRouterHome",
        style = JS('({isActive}) => { return isActive ? {color: "purple", textDecoration: "none"} : {color: "#1976d2", textDecoration: "none" }; }'),
        to = "/",
        'aria-label' = "Home",
        ListItem(
          key = 0,
          disablePadding = TRUE,
          sx = list(display = 'block'),
          ListItemButton(
            selected = FALSE, # TODO: update based on "isActive"
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
        style = JS('({isActive}) => { return isActive ? {color: "purple", textDecoration: "none"} : {color: "#1976d2", textDecoration: "none" }; }'),
        to = "/analytics",
        'aria-label' = "Home",
        ListItem(
          key = 0,
          disablePadding = TRUE,
          sx = list(display = 'block'),
          ListItemButton(
            selected = FALSE,
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
        style = JS('({isActive}) => { return isActive ? {color: "purple", textDecoration: "none"} : {color: "#1976d2", textDecoration: "none" }; }'),
        to = "/clients",
        'aria-label' = "Home",
        ListItem(
          key = 0,
          disablePadding = TRUE,
          sx = list(display = 'block'),
          ListItemButton(
            selected = FALSE,
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
        style = JS('({isActive}) => { return isActive ? {color: "purple", textDecoration: "none"} : {color: "#1976d2", textDecoration: "none" }; }'),
        to = "/tasks",
        'aria-label' = "Tasks",
        ListItem(
          key = 0,
          disablePadding = TRUE,
          sx = list(display = 'block'),
          ListItemButton(
            selected = FALSE,
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
