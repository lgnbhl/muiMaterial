# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/SideMenuMobile.tsx

mod_SideMenuMobile_ui <- function(id, triggerId) {
  ns <- NS(id)
  Drawer.triggerId(
    triggerId = triggerId,
    anchor = "right",
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
}

mod_SideMenuMobile_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
  })
}
