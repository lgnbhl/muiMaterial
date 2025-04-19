# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/Dashboard.tsx
library(shinyMaterialUI)
library(shiny)
library(reactRouter)

component_files <- list.files(
  path = system.file("examples/mui-template-dashboard/component", package = "shinyMaterialUI"),
  full.names = TRUE
)
sapply(component_files, source)


# routing with 'reactRouter' R package
# NavLinks.shinyInput() functions also added in 'MenuContent.R' and 'NavbarBreadcrumbs.R'
ui_dashboard <- function() {
  AppTheme(
    theme_dark = TRUE, # FALSE to use "light" theme, if so change all reactRouter::NavLink() text color
    reactRouter::HashRouter(
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
            # add React Router routes here
            reactRouter::Routes(
              reactRouter::Route(
                path = "/",
                element = Stack(
                  spacing = 2,
                  sx = list(
                    alignItems = "center",
                    mx = 3,
                    pb = 5,
                    mt = list(xs = 8, md = 0)
                  ),
                  Header(page_name = "Home"),
                  MainGrid(
                    p("Content home")
                  )
                )
              ),
              reactRouter::Route(
                path = "/analytics",
                element = Stack(
                  spacing = 2,
                  sx = list(
                    alignItems = "center",
                    mx = 3,
                    pb = 5,
                    mt = list(xs = 8, md = 0)
                  ),
                  Header(page_name = "Analytics", page_to = "/analytics"),
                  Box(
                    sx = list(width = '100%', maxWidth = list(sm = '100%', md = '1700px')),
                    Typography(
                      component = "h2",
                      variant = "h6",
                      sx = list(mb = 2),
                      "Analytics"
                    ),
                    Grid(
                      container = TRUE,
                      spacing = 2,
                      columns = 12,
                      sx = list(mb = "(theme) => theme.spacing(2)"),
                      uiOutput(outputId = "contentAnalytics")
                    )
                  )
                )
              ),
              reactRouter::Route(
                path = "/clients",
                element = Stack(
                  spacing = 2,
                  sx = list(
                    alignItems = "center",
                    mx = 3,
                    pb = 5,
                    mt = list(xs = 8, md = 0)
                  ),
                  Header(page_name = "Clients", page_to = "/clients"),
                  Box(
                    sx = list(width = '100%', maxWidth = list(sm = '100%', md = '1700px')),
                    Typography(
                      component = "h2",
                      variant = "h6",
                      sx = list(mb = 2),
                      "Clients"
                    ),
                    Grid(
                      container = TRUE,
                      spacing = 2,
                      columns = 12,
                      sx = list(mb = "(theme) => theme.spacing(2)"),
                      p("Content clients")
                    )
                  )
                )
              ),
              reactRouter::Route(
                path = "/tasks",
                element = Stack(
                  spacing = 2,
                  sx = list(
                    alignItems = "center",
                    mx = 3,
                    pb = 5,
                    mt = list(xs = 8, md = 0)
                  ),
                  Header(page_name = "Tasks", page_to = "/tasks"),
                  Box(
                    sx = list(width = '100%', maxWidth = list(sm = '100%', md = '1700px')),
                    Typography(
                      component = "h2",
                      variant = "h6",
                      sx = list(mb = 2),
                      "Tasks"
                    ),
                    Grid(
                      container = TRUE,
                      spacing = 2,
                      columns = 12,
                      sx = list(mb = "(theme) => theme.spacing(2)"),
                      p("Content tasks")
                    )
                  )
                )
              )
            )
          )
        )
      )
    )
  )
}

server_dashboard <- function(input, output, session) {
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
  
  # See shiny server rending issue discussed here: https://github.com/lgnbhl/reactRouter
  # Reload session when user clicks on new page to refresh server output content
  # observeEvent(c(input$reactRouterAnalytics, input$reactRouterClients, input$reactRouterTasks), {
  #   session$reload()
  # })
  output$contentAnalytics <- renderUI({
    p("Content analysis")
  })
}

if (interactive()) {
  shinyApp(ui = ui_dashboard, server = server_dashboard)
}
