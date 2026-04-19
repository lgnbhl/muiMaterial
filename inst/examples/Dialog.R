library(shiny)
library(muiMaterial)

ui_Dialog <- CssBaseline(
  Box(
    sx = list(p = 2),
    Button.shinyInput(
      inputId = "dialog_open",
      "Open dialog",
      variant = "contained"
    ),
    Dialog.shinyInput(
      inputId = "dialog_instance",
      open = FALSE,
      onClose = triggerEvent("dialog_close_evt"),
      DialogTitle("Confirm action"),
      DialogContent(
        DialogContentText("Are you sure you want to continue?")
      ),
      DialogActions(
        Button.shinyInput(inputId = "dialog_cancel", "Cancel"),
        Button.shinyInput(
          inputId = "dialog_confirm",
          "Confirm",
          variant = "contained"
        )
      )
    ),
    verbatimTextOutput("DialogResult")
  )
)

server_Dialog <- function(input, output, session) {
  result <- reactiveVal("No action yet")

  observeEvent(input$dialog_open, {
    updateDialog.shinyInput(inputId = "dialog_instance", open = TRUE)
  })
  observeEvent(input$dialog_close_evt, {
    updateDialog.shinyInput(inputId = "dialog_instance", open = FALSE)
  })
  observeEvent(input$dialog_cancel, {
    result("Cancelled")
    updateDialog.shinyInput(inputId = "dialog_instance", open = FALSE)
  })
  observeEvent(input$dialog_confirm, {
    result("Confirmed!")
    updateDialog.shinyInput(inputId = "dialog_instance", open = FALSE)
  })

  output$DialogResult <- renderText({
    result()
  })
}

if (interactive()) {
  shinyApp(ui = ui_Dialog, server = server_Dialog)
}
