# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/OptionsMenu.tsx

mod_OptionsMenu_ui <- function(id){
  ns <- NS(id)
  htmltools::div(
    mod_MenuButton_ui(
      id = ns("MenuButton_2"),
      'aria-label' = "Open menu",
      onClick = triggerEvent(ns("showMenuButton")),
      sx = list(borderColor = 'transparent')
    ),
    Menu.shinyInput(
      inputId = ns("menu"),
      open = FALSE,
      # anchorEl={anchorEl}
      onClose = triggerEvent(ns("hideMenuButton")),
      onClick = triggerEvent(ns("hideMenuButton")),
      transformOrigin = list(horizontal = 'right', vertical = 'top'),
      # Note: use 'anchorOrigin' numbers to fix 'anchorEl' bug
      #anchorOrigin = list(horizontal = 'right', vertical = 'bottom'),
      anchorOrigin = list(vertical = 600, horizontal = 250),
      sx = list(
        "[`& .${listClasses.root}`]" = list(
          padding = '4px'),
        "[`& .${paperClasses.root}`]" = list(
          padding = 0),
        "[`& .${dividerClasses.root}`]" = list(
          margin = '4px -4px')
      ),
      MenuItem(onClick = triggerEvent(ns("hideMenuButton")), "Profile"),
      MenuItem(onClick = triggerEvent(ns("hideMenuButton")), "My account"),
      Divider(),
      MenuItem(onClick = triggerEvent(ns("hideMenuButton")), "Add another account"),
      MenuItem(onClick = triggerEvent(ns("hideMenuButton")), "Settings"),
      Divider(),
      MenuItem(
        onClick = triggerEvent(ns("hideMenuButton")),
        sx = list(
          "[`& .${listItemIconClasses.root}`]" = list(
            ml = 'auto',
            minWidth = 0
          )
        ),
        ListItemText("Logout"),
        ListItemIcon(
          shiny::icon("right-from-bracket")
        )
      )
    )
  )
}

mod_OptionsMenu_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
    
    mod_MenuButton_server("MenuButton_2")
    
    toggleOptionsMenu <- reactiveVal(FALSE)
    observeEvent(input$showMenuButton, toggleOptionsMenu(TRUE))
    observeEvent(input$hideMenuButton, toggleOptionsMenu(FALSE))
    observeEvent(c(input$showMenuButton, input$hideMenuButton), {
      updateMenu.shinyInput(inputId = "menu", open = toggleOptionsMenu())
    })
  })
}
