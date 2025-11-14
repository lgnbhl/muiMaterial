# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/Dashboard.tsx
library(muiMaterial)
library(shiny)
library(reactRouter)

sapply(
  list.files(
    "./modules",
    #path = system.file("examples/mui-template-dashboard/modules", package = "muiMaterial"),
    full.names = TRUE
  ),
  function(i) {
    source(i)
  }
)

# component_files <- list.files(
#   "./modules",
#   #path = system.file("examples/mui-template-dashboard/modules", package = "muiMaterial"),
#   full.names = TRUE
# )
# sapply(component_files, source)


# routing with 'reactRouter' R package
# NavLinks.shinyInput() functions also added in 'MenuContent.R' and 'NavbarBreadcrumbs.R'
ui <- function() {
  fct_AppTheme(
    theme_dark = TRUE, # FALSE to use "light" theme, if so change all reactRouter::NavLink() text color
    reactRouter::HashRouter(
      CssBaseline(
        enableColorScheme = TRUE,
        Box(
          sx = list(display = "flex"),
          mod_SideMenu_ui(id = "SideMenu_1"),
          mod_AppNavbar_ui(id = "AppNavbar_1"),
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
                  mod_Header_ui(id = "Header_1", page_name = "Home"),
                  fct_MainGrid(
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
                  mod_Header_ui(id = "Header_2", page_name = "Analytics", page_to = "/analytics"),
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
                  mod_Header_ui(id = "Header_3", page_name = "Clients", page_to = "/clients"),
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
                  mod_Header_ui(id = "Header_4", page_name = "Tasks", page_to = "/tasks"),
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

server <- function(input, output, session) {
  mod_AppNavbar_server("AppNavbar_1")
  mod_SideMenu_server("SideMenu_1")

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
  shinyApp(ui = ui, server = server)
}
