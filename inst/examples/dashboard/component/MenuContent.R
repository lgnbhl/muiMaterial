# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/MenuContent.tsx

MenuContent <- function(){
  Stack(
    sx = list(flexGrow = 1, p = 1, justifyContent = 'space-between'),
    List(
      dense = TRUE,
      ListItem(
        key = 0,
        disablePadding = TRUE,
        sx = list(display = 'block'),
        ListItemButton(
          selected = JS("0 === 0"),
          ListItemIcon(
            shiny::icon("house")
          ),
          ListItemText(
            primary = "Home"
          )
        )
      ),
      ListItem(
        key = 0,
        disablePadding = TRUE,
        sx = list(display = 'block'),
        ListItemButton(
          selected = JS("1 === 0"),
          ListItemIcon(
            shiny::icon("chart-bar")
          ),
          ListItemText(
            primary = "Analytics"
          )
        )
      ),
      ListItem(
        key = 0,
        disablePadding = TRUE,
        sx = list(display = 'block'),
        ListItemButton(
          selected = JS("2 === 0"),
          ListItemIcon(
            shiny::icon("people-group")
          ),
          ListItemText(
            primary = "Clients"
          )
        )
      ),
      ListItem(
        key = 0,
        disablePadding = TRUE,
        sx = list(display = 'block'),
        ListItemButton(
          selected = JS("3 === 0"),
          ListItemIcon(
            shiny::icon("list")
          ),
          ListItemText(
            primary = "Tasks"
          )
        )
      )
    ),

    List(
      dense = TRUE,
      ListItem(
        key = 0,
        disablePadding = TRUE,
        sx = list(display = 'block'),
        ListItemButton(
          selected = JS("4 === 0"),
          ListItemIcon(
            shiny::icon("gear")
          ),
          ListItemText(
            primary = "Settings"
          )
        )
      ),
      ListItem(
        key = 0,
        disablePadding = TRUE,
        sx = list(display = 'block'),
        ListItemButton(
          selected = JS("5 === 0"),
          ListItemIcon(
            shiny::icon("info-circle")
          ),
          ListItemText(
            primary = "About"
          )
        )
      ),
      ListItem(
        key = 0,
        disablePadding = TRUE,
        sx = list(display = 'block'),
        ListItemButton(
          selected = JS("6 === 0"),
          ListItemIcon(
            shiny::icon("circle-question")
          ),
          ListItemText(
            primary = "Feedback"
          )
        )
      )
    )
  )
}
