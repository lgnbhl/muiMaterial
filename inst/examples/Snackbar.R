library(shiny)
library(muiMaterial)

ui_Snackbar <- CssBaseline(
  Box(
    sx = list(p = 2, display = "flex", gap = 2),
    Button.shinyInput(
      inputId = "snackbar_show",
      "Show snackbar",
      variant = "contained"
    ),
    Snackbar.shinyInput(
      inputId = "snackbar_instance",
      open = FALSE,
      autoHideDuration = 3000,
      message = "Saved successfully!",
      onClose = triggerEvent("snackbar_close_evt"),
      anchorOrigin = list(vertical = "bottom", horizontal = "center")
    )
  )
)

server_Snackbar <- function(input, output, session) {
  observeEvent(input$snackbar_show, {
    updateSnackbar.shinyInput(inputId = "snackbar_instance", open = TRUE)
  })
  observeEvent(input$snackbar_close_evt, {
    updateSnackbar.shinyInput(inputId = "snackbar_instance", open = FALSE)
  })
}

if (interactive()) {
  shinyApp(ui = ui_Snackbar, server = server_Snackbar)
}
