# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/MenuButton.tsx

mod_MenuButton_ui <- function(id, showBadge = FALSE, ...){
  ns <- NS(id)
  Badge(
    color = "error",
    variant = "dot",
    invisible = !showBadge,
    sx = list("[`& .${badgeClasses.badge}`]" = list(right = 2, top = 2 )),
    IconButton.shinyInput(
      inputId = ns("showMenuButton"),
      size = "small",
      shiny::icon("ellipsis-vertical"),
      ... 
    )
  )
}

mod_MenuButton_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
    toggleOptionsMenu <- reactiveVal(FALSE)
    observeEvent(input$showMenuButton, toggleOptionsMenu(TRUE))
    observeEvent(input$hideMenuButton, toggleOptionsMenu(FALSE))
    observeEvent(c(input$showMenuButton, input$hideMenuButton), {
      updateMenu.shinyInput(inputId = "menu", open = toggleOptionsMenu())
    })
  })
}
