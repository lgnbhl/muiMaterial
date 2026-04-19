library(shiny)
library(muiMaterial)

ui_LoadingButton <- CssBaseline(
  Box(
    sx = list(p = 2, display = "flex", gap = 2, alignItems = "center"),
    LoadingButton.shinyInput(
      inputId = "lb_save",
      "Save",
      variant = "contained",
      loading = FALSE
    ),
    Button.shinyInput(
      inputId = "lb_toggle",
      "Toggle loading state",
      variant = "outlined"
    ),
    verbatimTextOutput("LoadingButtonStatus")
  )
)

server_LoadingButton <- function(input, output, session) {
  loading <- reactiveVal(FALSE)
  clicks <- reactiveVal(0)

  observeEvent(input$lb_toggle, {
    loading(!loading())
    updateLoadingButton.shinyInput(inputId = "lb_save", loading = loading())
  })

  observeEvent(input$lb_save, {
    clicks(clicks() + 1)
  })

  output$LoadingButtonStatus <- renderText({
    if (loading()) {
      "Loading..."
    } else {
      paste("Save clicks:", clicks())
    }
  })
}

if (interactive()) {
  shinyApp(ui = ui_LoadingButton, server = server_LoadingButton)
}
