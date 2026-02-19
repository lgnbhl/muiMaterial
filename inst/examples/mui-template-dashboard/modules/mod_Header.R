# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/Header.js

mod_Header_ui <- function(id, page_name = "Home", page_to = "/"){
  ns <- NS(id)
  Stack(
    direction = "row",
    sx = list(
      display = list(xs = 'none', md = 'flex'),
      width = '100%',
      alignItems = list(xs = 'flex-start', md = 'center'),
      justifyContent = 'space-between',
      maxWidth = list(sm = '100%', md = '1700px'),
      pt = 1.5
    ),
    spacing = 2,
    mod_NavbarBreadcrumbs_ui(id = ns("NavbarBreadcrumbs_1"), page_name, page_to),
    Stack(
      direction = "row",
      sx = list(gap = 1),
      fct_Search() #,
      # CustomDatePicker()
      # mod_MenuButton_ui(
      #   id = "MenuButton_1",
      #   showBadge = TRUE,
      #   'aria-label' = "Open notifications"
      # )
    )
  )
}

mod_Header_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
    # mod_MenuButton_server("MenuButton_1")
  })
}
