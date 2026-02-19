# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/AppNavbar.tsx
# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/SideMenuMobile.tsx

mod_AppNavbar_ui <- function(id) {
  ns <- NS(id)
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
    # Styled Toolbar matching the official template (flexDirection column, padding 12px)
    Toolbar(
      variant = "regular",
      sx = list(
        width = '100%',
        padding = '12px',
        display = 'flex',
        flexDirection = 'column',
        alignItems = 'start',
        justifyContent = 'center',
        gap = '12px',
        flexShrink = 0
      ),
      Stack(
        direction = "row",
        sx = list(
          alignItems = 'center',
          flexGrow = 1,
          width = '100%',
          gap = 1
        ),
        Stack(
          direction = "row",
          spacing = 1,
          sx = list(justifyContent = 'center', mr = 'auto'),
          # CustomIcon() — not implemented
          Typography(
            variant = "h4",
            component = "h1",
            sx = list(color = 'text.primary'),
            "Dashboard"
          )
        ),
        # ColorModeIconDropdown() — not implemented
        IconButton(
          id = "drawer",
          'aria-label' = "menu",
          shiny::icon("bars")
        ),
        Drawer.triggerId(
          triggerId = "drawer",
          anchor = "right",
          open = FALSE,
          onClose = triggerEvent(ns("hideDrawer")),
          sx = list(
            zIndex = "(theme) => theme.zIndex.drawer + 1,
            [`& .${drawerClasses.paper}`]: {
              backgroundImage: 'none',
              backgroundColor: 'background.paper'
            "
          ),
          Stack(
            sx = list(
              maxWidth = '70dvw',
              height = '100%'
            ),
            Stack(
              direction = "row",
              sx = list(p = 2, pb = 0, gap = 1),
              Stack(
                direction = "row",
                sx = list(gap = 1, alignItems = 'center', flexGrow = 1, p = 1),
                Avatar(
                  sizes = "small",
                  alt = "Felix Luginbuhl",
                  src = "https://felixluginbuhl.com/about/image-profile.jpg",
                  sx = list(width = 24, height = 24)
                ),
                Typography(
                  component = "p",
                  variant = "h6",
                  "Felix Luginbuhl"
                )
              )
              # MenuButton(showBadge = TRUE, NotificationsRoundedIcon()) — not implemented
            ),
            Divider(),
            Stack(
              sx = list(flexGrow = 1),
              mod_MenuContent_ui(id = ns("MenuContent_1")),
              Divider()
            ),
            fct_CardAlert(),
            Stack(
              sx = list(p = 2),
              Button(
                variant = "outlined",
                fullWidth = TRUE,
                startIcon = shiny::icon("right-from-bracket"),
                "Logout"
              )
            )
          )
        )
      )
    )
  )
}

mod_AppNavbar_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
    mod_MenuContent_server("MenuContent_1")
  })
}
