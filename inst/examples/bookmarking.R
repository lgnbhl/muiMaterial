library(shiny)
library(muiMaterial)

ui <- muiMaterialPage(
  CssBaseline(
    Box(
      sx = list(p = 2),
      TextField.shinyInput(
        "txt_mui",
        label = "Enter text:",
        value = "initial"
      ),
      verbatimTextOutput("show_txt") #,
      # Bookmark control button (NEED fluidPage() or Bootstrap), 
      # which conflicts with Material UI
      #bookmarkButton()
    )
  )
)

server <- function(input, output, session) {
  
  # Show current value
  output$show_txt <- renderPrint({
    input$txt_mui
  })
  
  # onRestore handler
  # Called when a bookmarked URL is loaded and state is restored.
  onRestore(function(state) {
    # state$input contains previously bookmarked inputs
    old_val <- state$input$txt_mui
    # Update the TextField, so the UI reflects the bookmark value
    updateTextField.shinyInput(
      session,
      "txt_mui",
      value = old_val
    )
  })
  
  # Optional: automatically update the URL on every change
  observe({
    reactiveValuesToList(input)
    session$doBookmark()
  })
  onBookmarked(function(url) updateQueryString(url))
}

# 3. Enable bookmarking via URL
shinyApp(ui, server, enableBookmarking = "url")
