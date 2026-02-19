library(muiMaterial)
library(shiny)

# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/OptionsMenu.tsx
OptionsMenu <- Box(
  m = 2,
  Badge(
    color = "error",
    variant = "dot",
    invisible = FALSE,
    sx = list("[`& .${badgeClasses.badge}`]" = list(right = 2, top = 2)),
    IconButton(
      id = "showMenu",
      size = "small",
      shiny::icon("bars"),
      'aria-label' = "Open menu",
      sx = list(borderColor = 'transparent')
    )
  ),
  Menu.triggerId(
    triggerId = "showMenu",
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

ui_Menu <- muiMaterialPage(
  CssBaseline(
    OptionsMenu
  )
)

server_Menu <- function(input, output, session) {}

if (interactive()) {
  shinyApp(ui = ui_Menu, server = server_Menu)
}
