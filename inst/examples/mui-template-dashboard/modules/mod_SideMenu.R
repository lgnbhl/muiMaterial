# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/SideMenu.tsx

mod_SideMenu_ui <- function(id){
  ns <- NS(id)
  Drawer(
    variant = "permanent",
    sx = list(
      width = 240,
      flexShrink = 0,
      boxSizing = 'border-box',
      mt = 10,
      display = list(xs = 'none', md = 'block')
    ),
    Box(
      sx = list(
        display = 'flex',
        mt = 'calc(var(--template-frame-height, 0px) + 4px)',
        p = 1.5
      ),
      mod_SelectContent_ui(id = ns("SelectContent"))
    ),
    Divider(),
    mod_MenuContent_ui(id = ns("MenuContent_1")),
    fct_CardAlert(),
    Stack(
      direction = "row",
      sx = list(
        p = 2,
        gap = 1,
        alignItems = 'center',
        borderTop = '1px solid',
        borderColor = 'divider'
      ),
      Avatar(
        sizes = "small",
        alt = "Felix Luginbuhl",
        src = "https://felixluginbuhl.com/about/image-profile.jpg",
        sx = list(width = 36, height = 36)
      ),
      Box(
        sx = list(mr = 'auto'),
        Typography(
          variant = "body2",
          sx = list(fontWeight = 500, lineHeight = '16px'),
          "Felix Luginbuhl"
        ),
        Typography(
          variant = "caption",
          sx = list(color = 'text.secondary'),
          "felixluginbuhl.com"
        )
      ),
      mod_OptionsMenu_ui(ns("OptionsMenu_1"))
    )
  )
}

mod_SideMenu_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
    
    mod_MenuContent_server("MenuContent_1")
    mod_OptionsMenu_server("OptionsMenu_1")
    
    toggleOptionsMenu <- reactiveVal(FALSE)
    observeEvent(input$showMenuButton, toggleOptionsMenu(TRUE))
    observeEvent(input$hideMenuButton, toggleOptionsMenu(FALSE))
    observeEvent(c(input$showMenuButton, input$hideMenuButton), {
      updateMenu.shinyInput(inputId = "menu", open = toggleOptionsMenu())
    })
  })
}
