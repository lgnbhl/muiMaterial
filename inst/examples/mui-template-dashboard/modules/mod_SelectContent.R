# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/SelectContent.tsx

mod_SelectContent_ui <- function(id, company = ""){
  ns <- NS(id)
  Select.shinyInput(
    inputId = ns("companySelect"),
    id = "company-simple-select",
    value = company,
    displayEmpty = TRUE,
    inputProps = list('aria-label' = 'Select company'),
    fullWidth = TRUE,
    sx = list(
    maxHeight = 56,
    width = 215,
    '&.MuiList-root' = list(
      p = '8px'
    ),
    "[`& .${selectClasses.select}`]" = list(
      display = 'flex',
      alignItems = 'center',
      gap = '2px',
      pl = 1
    )
    ),
    ListSubheader(
      sx = list(pt = 0),
      "Production"
    ),
    MenuItem(
      value = "",
      # ListItemIcon(
      #   shiny::icon("laptop")
      # ),
      ListItemText(
        primary = "Sitemark-web", 
        secondary = "Web app"
      )
    ),
    MenuItem(
      value = "10",
      # ListItemIcon(
      #   shiny::icon("phone")
      # ),
      ListItemText(
        primary = "Sitemark-app",
        secondary = "Mobile application"
      )
    ),
    MenuItem(
      value = "20",
      # ListItemAvatar(
      #   Avatar(alt = "Sitemark Store",
      #     shiny::icon("device")
      #   )
      # ),
      ListItemText(
        primary = "Sitemark-Store",
        secondary = "Web app"
      )
    ),
    ListSubheader("Development"),
    MenuItem(
      value = "30",
      # ListItemAvatar(
      #   Avatar(alt = "Sitemark Admin",
      #     shiny::icon("screwdriver-wrench")
      #   )
      # ),
      ListItemText(
        primary = "Sitemark-Admin",
        secondary = "Web app"
      )
    ),
    Divider(sx = list(mx = -1)),
    MenuItem(
      value = "40",
      # ListItemIcon(
      #   shiny::icon("add")
      # ),
      ListItemText(
        primary = "Add product",
        secondary = "Web app"
      )
    )
  )
}

mod_SelectContent_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
  })
}
