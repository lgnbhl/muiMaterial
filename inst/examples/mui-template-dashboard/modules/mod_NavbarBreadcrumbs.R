# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/NavbarBreadcrumbs.tsx

mod_NavbarBreadcrumbs_ui <- function(id, page_name = "Home", page_to = "/"){
  ns <- NS(id)
  Breadcrumbs(
    'aria-label' = "breadcrumb",
    separator = shiny::icon("chevron-right"),
    Typography(
      variant = "body1", 
      "Dashboard"
    ),
    reactRouter::NavLink.shinyInput(
      inputId = ns("reactRouterHome"),
      style = list(textDecoration = "none", color = "white"),
      to = page_to,
      'aria-label' = "Home",
      Typography(
        variant = "body1",
        sx = list(color = 'text.primary', fontWeight = 600),
        page_name
      )
    )
  )
}

mod_NavbarBreadcrumbs_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
  })
}
