# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/SelectContent.tsx

.avatarSx <- list(
  width = 28,
  height = 28,
  bgcolor = 'background.paper',
  color = 'text.secondary',
  border = '1px solid',
  borderColor = 'divider',
  fontSize = '0.875rem'
)

.listItemAvatarSx <- list(minWidth = 0, mr = 1.5)

mod_SelectContent_ui <- function(id, company = "") {
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
      '&.MuiList-root' = list(p = '8px'),
      '& .MuiSelect-select' = list(
        display = 'flex',
        alignItems = 'center',
        gap = '2px',
        pl = 1,
        py = '6px'
      )
    ),
    ListSubheader(sx = list(pt = 0), "Production"),
    MenuItem(
      value = "",
      ListItemAvatar(
        sx = .listItemAvatarSx,
        Avatar(alt = "Sitemark web", sx = .avatarSx, shiny::icon("desktop"))
      ),
      ListItemText(primary = "Sitemark-web", secondary = "Web app")
    ),
    MenuItem(
      value = "10",
      ListItemAvatar(
        sx = .listItemAvatarSx,
        Avatar(
          alt = "Sitemark App",
          sx = .avatarSx,
          shiny::icon("mobile-screen-button")
        )
      ),
      ListItemText(primary = "Sitemark-app", secondary = "Mobile application")
    ),
    MenuItem(
      value = "20",
      ListItemAvatar(
        sx = .listItemAvatarSx,
        Avatar(alt = "Sitemark Store", sx = .avatarSx, shiny::icon("desktop"))
      ),
      ListItemText(primary = "Sitemark-Store", secondary = "Web app")
    ),
    ListSubheader("Development"),
    MenuItem(
      value = "30",
      ListItemAvatar(
        sx = .listItemAvatarSx,
        Avatar(
          alt = "Sitemark Admin",
          sx = .avatarSx,
          shiny::icon("screwdriver-wrench")
        )
      ),
      ListItemText(primary = "Sitemark-Admin", secondary = "Web app")
    ),
    Divider(sx = list(mx = -1)),
    MenuItem(
      value = "40",
      ListItemIcon(shiny::icon("plus")),
      ListItemText(primary = "Add product", secondary = "Web app")
    )
  )
}

mod_SelectContent_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
  })
}
