# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/Dashboard.tsx
library(shinyMaterialUI)
library(shiny)

sapply(
  list.files(
    system.file("dashboard/component", package = "shinyMaterialUI"),
    full.names = TRUE
  ),
  function(i) {
    source(i)
  }
)

ui_dashboard <- function() {
  AppTheme(
    CssBaseline(
      enableColorScheme = TRUE,
      Box(
        sx = list(display = "flex"),
        SideMenu(),
        AppNavbar(),
        Box(
          component = "main",
          sx = list(
            flexGrow = 1,
            backgroundColor = "theme.vars
              ? `rgba(${theme.vars.palette.background.defaultChannel} / 1)`
              : alpha(theme.palette.background.default, 1)",
            overflow = 'auto'
          ),
          Stack(
            spacing = 2,
            sx = list(
              alignItems = "center",
              mx = 3,
              pb = 5,
              mt = list(xs = 8, md = 0)
            ),
          Header(),
          MainGrid()
          )
        )
      )
    )
  )
}

server_dashboard <- function(input, output) {
  # for drawer in SideMenuMobile.R and AppNavbar.R
  toggleDrawer <- reactiveVal(FALSE)
  observeEvent(input$showDrawer, toggleDrawer(TRUE))
  observeEvent(input$hideDrawer, toggleDrawer(FALSE))
  observeEvent(c(input$showDrawer, input$hideDrawer), {
    updateDrawer.shinyInput(inputId = "drawer", open = toggleDrawer())
  })
  # for MenuButton in SideMenu.R, OptionsMenu.R and MenuButton.R
  toggleOptionsMenu <- reactiveVal(FALSE)
  observeEvent(input$showMenuButton, toggleOptionsMenu(TRUE))
  observeEvent(input$hideMenuButton, toggleOptionsMenu(FALSE))
  observeEvent(c(input$showMenuButton, input$hideMenuButton), {
    updateMenu.shinyInput(inputId = "menu", open = toggleOptionsMenu())
  })
}

if (interactive()) {
  shinyApp(ui = ui_dashboard, server = server_dashboard)
}
