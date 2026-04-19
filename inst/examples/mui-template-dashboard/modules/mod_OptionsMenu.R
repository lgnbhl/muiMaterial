# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/OptionsMenu.tsx

mod_OptionsMenu_ui <- function(id) {
  ns <- NS(id)
  Box(
    sx = list(position = 'relative'),
    Badge(
      color = "error",
      variant = "dot",
      invisible = TRUE,
      sx = list("[`& .${badgeClasses.badge}`]" = list(right = 2, top = 2)),
      IconButton(
        id = ns("optionsMenuBtn"),
        size = "small",
        'aria-label' = "Open menu",
        sx = list(borderColor = 'transparent'),
        shiny::icon("ellipsis-vertical")
      )
    ),
    Menu.triggerId(
      triggerId = ns("optionsMenuBtn"),
      transformOrigin = list(horizontal = 'right', vertical = 'top'),
      anchorOrigin = list(horizontal = 'right', vertical = 'bottom'),
      sx = list(
        "[`& .${listClasses.root}`]" = list(
          padding = '4px'
        ),
        "[`& .${paperClasses.root}`]" = list(
          padding = 0
        ),
        "[`& .${dividerClasses.root}`]" = list(
          margin = '4px -4px'
        )
      ),
      MenuItem("Profile"),
      MenuItem("My account"),
      Divider(),
      MenuItem("Add another account"),
      MenuItem("Settings"),
      Divider(),
      MenuItem(
        sx = list(
          "[`& .${listItemIconClasses.root}`]" = list(
            ml = 'auto',
            minWidth = 0
          )
        ),
        ListItemText("Logout"),
        ListItemIcon(
          shiny::icon("right-from-bracket")
        )
      )
    )
  )
}

mod_OptionsMenu_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
  })
}
