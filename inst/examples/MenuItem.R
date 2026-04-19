library(shiny)
library(muiMaterial)

ui_MenuItem <- CssBaseline(
  Box(
    sx = list(p = 2),
    IconButton(
      id = "menuItemTrigger",
      shiny::icon("bars"),
      'aria-label' = "Open menu"
    ),
    Menu.triggerId(
      triggerId = "menuItemTrigger",
      MenuItem.shinyInput(inputId = "menu_profile", "Profile"),
      MenuItem.shinyInput(inputId = "menu_settings", "Settings"),
      Divider(),
      MenuItem.shinyInput(
        inputId = "menu_logout",
        ListItemIcon(shiny::icon("right-from-bracket")),
        ListItemText("Log out")
      )
    ),
    Box(sx = list(mt = 2), verbatimTextOutput("MenuItemResult"))
  )
)

server_MenuItem <- function(input, output, session) {
  last_action <- reactiveVal("No menu item clicked yet")

  observeEvent(input$menu_profile, last_action("Profile clicked"))
  observeEvent(input$menu_settings, last_action("Settings clicked"))
  observeEvent(input$menu_logout, last_action("Log out clicked"))

  output$MenuItemResult <- renderText({
    last_action()
  })
}

if (interactive()) {
  shinyApp(ui = ui_MenuItem, server = server_MenuItem)
}
