library(muiMaterial)
library(shiny)

ui_Tabs <- TabContext.shinyInput(
  inputId = "TabContextExample", # with observer in server
  value = "value1",
  Box(
    sx = list(borderBottom = 1, borderColor = 'divider'),
    TabList.shinyInput(
      inputId = "tabListExample",
      value = "value1",
      Tab(label="Item One", value = "value1"),
      Tab(label="Item Two", value = "value2"),
      Tab(label="Item Three", value = "value3")
    )
  ),
  TabPanel.shinyInput(inputId = "tab1", value = "value1", "Content 1"),
  TabPanel.shinyInput(inputId = "tab2", value = "value2", "Content 2"),
  TabPanel.shinyInput(inputId = "tab3", value = "value3", "Content 3")
)

server_Tabs <- function(input, output, session) {
  observe({
    updateTabContext.shinyInput(inputId = "TabContextExample", value = input$tabListExample)
  })
}

if (interactive()) {
  shinyApp(ui = ui_Tabs, server = server_Tabs)
}
