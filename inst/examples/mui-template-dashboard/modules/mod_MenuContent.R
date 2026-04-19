# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/MenuContent.tsx

# routing links with 'reactRouter' added below
mod_MenuContent_ui <- function(id) {
  ns <- NS(id)
  Stack(
    sx = list(flexGrow = 1, p = 1, justifyContent = 'space-between'),
    List(
      dense = TRUE,
      # https://github.com/mui/material-ui/issues/32400
      reactRouter::NavLink(
        style = JS(
          '({isActive}) => { return isActive ? {color: "purple", textDecoration: "none"} : {color: "#1976d2", textDecoration: "none" }; }'
        ),
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
      reactRouter::NavLink(
        style = JS(
          '({isActive}) => { return isActive ? {color: "purple", textDecoration: "none"} : {color: "#1976d2", textDecoration: "none" }; }'
        ),
        to = "/analytics",
        'aria-label' = "Analytics",
        ListItem(
          key = 1,
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
      reactRouter::NavLink(
        style = JS(
          '({isActive}) => { return isActive ? {color: "purple", textDecoration: "none"} : {color: "#1976d2", textDecoration: "none" }; }'
        ),
        to = "/clients",
        'aria-label' = "Clients",
        ListItem(
          key = 2,
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
      reactRouter::NavLink(
        style = JS(
          '({isActive}) => { return isActive ? {color: "purple", textDecoration: "none"} : {color: "#1976d2", textDecoration: "none" }; }'
        ),
        to = "/tasks",
        'aria-label' = "Tasks",
        ListItem(
          key = 3,
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
    ),
    List(
      dense = TRUE,
      ListItem(
        disablePadding = TRUE,
        sx = list(display = 'block'),
        ListItemButton(
          ListItemIcon(shiny::icon("gear")),
          ListItemText(primary = "Settings")
        )
      ),
      ListItem(
        disablePadding = TRUE,
        sx = list(display = 'block'),
        ListItemButton(
          ListItemIcon(shiny::icon("circle-info")),
          ListItemText(primary = "About")
        )
      ),
      ListItem(
        disablePadding = TRUE,
        sx = list(display = 'block'),
        ListItemButton(
          ListItemIcon(shiny::icon("circle-question")),
          ListItemText(primary = "Feedback")
        )
      )
    )
  )
}

mod_MenuContent_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
  })
}
