library(shiny)
library(muiMaterial)

ui_Modal <- CssBaseline(
  Box(
    sx = list(p = 2),
    Button.shinyInput(
      inputId = "modal_open",
      "Open modal",
      variant = "contained"
    ),
    Modal.shinyInput(
      inputId = "modal_instance",
      open = FALSE,
      onClose = triggerEvent("modal_close_evt"),
      Box(
        sx = list(
          position = "absolute",
          top = "50%",
          left = "50%",
          transform = "translate(-50%, -50%)",
          width = 400,
          bgcolor = "background.paper",
          boxShadow = 24,
          p = 4
        ),
        Typography("Modal title", variant = "h6", component = "h2"),
        Typography(
          "Click outside or press Escape to close.",
          sx = list(mt = 2)
        )
      )
    )
  )
)

server_Modal <- function(input, output, session) {
  observeEvent(input$modal_open, {
    updateModal.shinyInput(inputId = "modal_instance", open = TRUE)
  })
  observeEvent(input$modal_close_evt, {
    updateModal.shinyInput(inputId = "modal_instance", open = FALSE)
  })
}

if (interactive()) {
  shinyApp(ui = ui_Modal, server = server_Modal)
}
