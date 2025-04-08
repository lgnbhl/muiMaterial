# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/AppNavbar.tsx
source(system.file("examples/dashboard/component/SideMenuMobile.R", package = "shinyMaterialUI"))

AppNavbar <- function(){
  AppBar(
    position = "fixed",
    sx = list(
      display = list(xs = 'auto', md = 'none'),
      boxShadow = 0,
      bgcolor = 'background.paper',
      backgroundImage = 'none',
      borderBottom = '1px solid',
      borderColor = 'divider',
      top = 'var(--template-frame-height, 0px)'
    ),
    Toolbar(
      variant = "regular",
      Stack(
        direction = "row",
        sx = list(
          alignItems = 'center',
          flexGrow = 1,
          width = '100%',
          gap = 1
        ),
        #CustomIcon()
        Typography(
          variant="h4",
          component="h1",
          sx = list(color = 'text.primary'),
          "Dashboard"
        )
      ),
      # ColorModeIconDropdown()
      # CUSTOM MODIFICATION HERE USING REACTIVE SHINY INPUT
      # SEE SideMenuMobile() IN "component/SideMenuMobile.R"
      IconButton.shinyInput(
        inputId = "showDrawer",
        shiny::icon("bars")
      ),
      # MenuButton(
      #   'aria-label' = "menu",
      #   onClick = toggleDrawer,
      #   shiny::icon("bars")
      # ),
      SideMenuMobile()
    )
  )
}
