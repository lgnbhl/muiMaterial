# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/SideMenuMobile.tsx

mod_SideMenuMobile_ui <- function(id){
  ns <- NS(id)
  Drawer.shinyInput(
    inputId = ns("drawer"),
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
        ),
        # MenuButton(
        #   showBadge = TRUE,
        #   NotificationsRoundedIcon()
        # )
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

mod_AppNavbar_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
    
    mod_MenuContent_server("MenuContent_1")
    
    toggleDrawer <- reactiveVal(FALSE)
    observeEvent(input$showDrawer, toggleDrawer(TRUE))
    observeEvent(input$hideDrawer, toggleDrawer(FALSE))
    observeEvent(c(input$showDrawer, input$hideDrawer), {
      updateDrawer.shinyInput(inputId = "drawer", open = toggleDrawer())
    })
  })
}
