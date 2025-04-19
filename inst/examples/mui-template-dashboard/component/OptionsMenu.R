# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/OptionsMenu.tsx
source(system.file("examples/mui-template-dashboard/component/MenuButton.R", package = "shinyMaterialUI"))

OptionsMenu <- function(){
  htmltools::div(
  MenuButton(
    'aria-label' = "Open menu",
    onClick = triggerEvent("showMenuButton"),
    sx = list(borderColor = 'transparent')
  ),
  Menu.shinyInput(
    inputId = "menu",
    open = FALSE,
    # anchorEl={anchorEl}
    onClose = triggerEvent("hideMenuButton"),
    onClick = triggerEvent("hideMenuButton"),
    transformOrigin = list(horizontal = 'right', vertical = 'top'),
    # Note: use 'anchorOrigin' numbers to fix 'anchorEl' bug
    #anchorOrigin = list(horizontal = 'right', vertical = 'bottom'),
    anchorOrigin = list(vertical = 600, horizontal = 250),
    sx = list(
      "[`& .${listClasses.root}`]" = list(
        padding = '4px'),
      "[`& .${paperClasses.root}`]" = list(
        padding = 0),
      "[`& .${dividerClasses.root}`]" = list(
        margin = '4px -4px')
    ),
    MenuItem(onClick = triggerEvent("hideMenuButton"), "Profile"),
    MenuItem(onClick = triggerEvent("hideMenuButton"), "My account"),
    Divider(),
    MenuItem(onClick = triggerEvent("hideMenuButton"), "Add another account"),
    MenuItem(onClick = triggerEvent("hideMenuButton"), "Settings"),
    Divider(),
    MenuItem(
      onClick = triggerEvent("hideMenuButton"),
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
