# https://mui.com/material-ui/react-drawer/#temporary-drawer
library(muiMaterial)
library(shiny)

ui_Drawer <- div(
  Button.shinyInput(
    inputId = "showDrawer",
    "Open drawer"
  ),
  Drawer.shinyInput(
    inputId = "drawer",
    open = FALSE,
    onClose = triggerEvent("hideDrawer"),
    Box(
      sx = list(width = 250),
      role = "presentation",
      onClick = triggerEvent("hideDrawer"),
      List(
        ListItemButton(
          disablePadding = TRUE,
          ListItem(
            key = "Inbox",
            ListItemIcon(
              shiny::icon("inbox")
            ),
            ListItemText(primary = "Inbox")
          )
        )
      )
    )
  )
)

server_Drawer <- function(input, output, session) {
  toggleDrawer <- reactiveVal(FALSE)
  observeEvent(input$showDrawer, toggleDrawer(TRUE))
  observeEvent(input$hideDrawer, toggleDrawer(FALSE))
  observeEvent(c(input$showDrawer, input$hideDrawer), {
    updateDrawer.shinyInput(inputId = "drawer", open = toggleDrawer())
  })
}

if (interactive()) {
  shinyApp(ui = ui_Drawer, server = server_Drawer)
}
