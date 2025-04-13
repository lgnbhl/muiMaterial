# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/Dashboard.tsx
library(shinyMaterialUI)
library(shiny)

component_files <- list.files(
  path = system.file("examples/dashboard/component", package = "shinyMaterialUI"),
  #path = "inst/examples/dashboard/component/", 
  full.names = TRUE
)
sapply(component_files, source)


# routing with 'reactRouter' R package
# NavLinks.shinyInput() functions also added in 'MenuContent.R'
ui_dashboard <- function() {
  AppTheme(
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
            Stack(
              spacing = 2,
              sx = list(
                alignItems = "center",
                mx = 3,
                pb = 5,
                mt = list(xs = 8, md = 0)
              ),
              Header(),
              # add React Router routes here
              reactRouter::Routes(
                reactRouter::Route(
                  path = "/",
                  element = MainGrid(
                    p("Content home")
                  )
                ),
                reactRouter::Route(
                  path = "/analytics",
                  element = Box(
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
                ),
                reactRouter::Route(
                  path = "/clients",
                  element = Box(
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
                      uiOutput(outputId = "contentClients")
                    )
                  )
                ),
                reactRouter::Route(
                  path = "/tasks",
                  element = Box(
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
                      uiOutput(outputId = "contentTasks")
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
  
  # NOTE: please contact me if you know a way to refresh output content without reloading the session :)
  # shiny propagation issue discussed here: https://github.com/lgnbhl/reactRouter#propagation-issue
  # reload session when user clicks on new page to refresh output content
  observeEvent(c(input$reactRouterAnalytics, input$reactRouterClients, input$reactRouterTasks), {
    session$reload()
  })

  output$contentAnalytics <- renderUI({
    p("Content analysis")
  })
  output$contentClients <- renderUI({
    p("Content clients")
  })
  output$contentTasks <- renderUI({
    p("Content tasks")
  })
}

if (interactive()) {
  shinyApp(ui = ui_dashboard, server = server_dashboard)
}
