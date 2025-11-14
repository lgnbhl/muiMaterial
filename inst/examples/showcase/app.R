library(shiny)
library(muiMaterial)

# run R code from examples to get ui objects
example_files <- list.files(system.file("examples", package = "muiMaterial"), full.names = TRUE, pattern = ".R$")
sapply(X = example_files, FUN = source)

# Get R code of examples
# Inspired from shiny.blueprint showcase
# https://github.com/Appsilon/shiny.blueprint/tree/main/inst/examples/showcase
addFileName <- function(code, filename, commentChar) {
  paste0(commentChar, " ", filename, "\n\n", code)
}

get_code_example <- function(component_name) {
  rPath <- system.file(file.path("examples", paste0(component_name, ".R")), package = "muiMaterial")
  if (!file.exists(rPath)) {
    return()
  }
  rCode <- addFileName(readChar(rPath, file.info(rPath)$size), basename(rPath), "#")
  return(rCode)
}

# Create examples TabPanels
create_TabPanel <- function(component_name) {
  Box(
    Typography(component_name, variant = "h5", pb = 2),
    Box(
      eval(parse(text = paste0("ui_", component_name))),
      tags$details(
        tags$summary("Show R code"),
        Card(
          tags$pre(
            tags$code(
              class = "language-r",
              get_code_example(component_name)
            )
          )
        )
      )
    )
  )
}

# Custom CSS for R code examples
custom_css <- '
code[class*="language-"],
pre[class*="language-"] {
  background: unset;
  font-family: monospace;
  font-size: 0.7rem;
}'

Sidebar <- TabContext.shinyInput(
  inputId = "context",
  Box(
    bgcolor = 'background.paper',
    display = 'flex',
    TabList.shinyInput(
      inputId = "tabListShowcase",
      value = "Autocomplete",
      sx = list(minWidth = "15vh"),
      orientation = "vertical",
      Typography("Inputs", variant = "h6", m = 1),
      Tab(label = "Autocomplete", value = "Autocomplete"),
      Tab(label = "Button", value = "Button"),
      Tab(label = "Card", value = "Card"),
      Tab(label = "Checkbox", value = "Checkbox"),
      Tab(label = "Drawer", value = "Drawer"),
      Tab(label = "Fab", value = "Fab"),
      Tab(label = "Menu", value = "Menu"),
      Tab(label = "Tabs", value = "Tabs"),
      Tab(label = "Slider", value = "Slider"),
      Tab(label = "Stepper", value = "Stepper"),
      Tab(label = "TextField", value = "TextField"),
      Tab(label = "ThemeProvider", value = "ThemeProvider")
    ),
    TabPanel.shinyInput(inputId = "tabAutocomplete", value = "Autocomplete", create_TabPanel("Autocomplete")),
    TabPanel.shinyInput(inputId = "tabButton", value = "Button", create_TabPanel("Button")),
    TabPanel.shinyInput(inputId = "tabCard", value = "Card", create_TabPanel("Card")),
    TabPanel.shinyInput(inputId = "tabCheckbox", value = "Checkbox", create_TabPanel("Checkbox")),
    TabPanel.shinyInput(inputId = "tabDrawer", value = "Drawer", create_TabPanel("Drawer")),
    TabPanel.shinyInput(inputId = "tabFab", value = "Fab", create_TabPanel("Fab")),
    TabPanel.shinyInput(inputId = "tabMenu", value = "Menu", create_TabPanel("Menu")),
    TabPanel.shinyInput(inputId = "tabTabs", value = "Tabs", create_TabPanel("Tabs")),
    TabPanel.shinyInput(inputId = "tabSlider", value = "Slider", create_TabPanel("Slider")),
    TabPanel.shinyInput(inputId = "tabStepper", value = "Stepper", create_TabPanel("Stepper")),
    TabPanel.shinyInput(inputId = "tabTextField", value = "TextField", create_TabPanel("TextField")),
    TabPanel.shinyInput(inputId = "tabThemeProvider", value = "ThemeProvider", create_TabPanel("ThemeProvider"))
  )
)

Header <- AppBar(
  position = "static",
  Toolbar(
    Typography("Dashboard", variant = "h5", component = "div", sx = list(flexGrow = 1))
  )
)

ui <- muiMaterialPage(
  CssBaseline(
    Header,
    Sidebar
  )
)

server <- function(input, output) {
  # Tabs for showcase app
  observe({
    updateTabContext.shinyInput(inputId = "context", value = input$tabListShowcase)
  })
  # Autocomplete
  output$AutocompleteValue1 <- renderText({
    paste(input$Autocomplete1)
  })
  output$AutocompleteValue2 <- renderText({
    paste(input$Autocomplete2)
  })
  output$AutocompleteValue3 <- renderTable({
    as.data.frame(input$Autocomplete3)
  })
  # CheckBox
  output$CheckboxesValue1 <- renderText({
    paste(input$Checkboxes1)
  })
  # Drawer
  toggleDrawer <- reactiveVal(FALSE)
  observeEvent(input$showDrawer, toggleDrawer(TRUE))
  observeEvent(input$hideDrawer, toggleDrawer(FALSE))
  observeEvent(c(input$showDrawer, input$hideDrawer), {
    updateDrawer.shinyInput(inputId = "drawer", open = toggleDrawer())
  })
  # Menu
  toggleOptionsMenu <- reactiveVal(FALSE)
  observeEvent(input$showMenuButton, toggleOptionsMenu(TRUE))
  observeEvent(input$hideMenuButton, toggleOptionsMenu(FALSE))
  observeEvent(c(input$showMenuButton, input$hideMenuButton), {
    updateMenu.shinyInput(inputId = "menu", open = toggleOptionsMenu())
  })
  # Tabs
  observe({
    updateTabContext.shinyInput(inputId = "TabContextExample", value = input$tabListExample)
  })
  # Slider
  output$SliderValue1 <- renderText({
    paste(input$DiscreteSliderLabel)
  })
  # Stepper
  stepIndex <- reactiveValues(value = 0)
  
  ## 'Next' button not disabled if value is 3
  observe({
    if(stepIndex$value != 3) updateButton.shinyInput(inputId = "nextStep", disabled = FALSE)
  })
  ## 'Next' button disabled if value is 3
  observeEvent(input$nextStep, {
    stepIndex$value <- stepIndex$value + 1
    if(stepIndex$value == 3) updateButton.shinyInput(inputId = "nextStep", disabled = TRUE)
  })
  observeEvent(input$backStep, {
    stepIndex$value <- stepIndex$value - 1
    if(stepIndex$value <= 0) stepIndex$value <- 0
  })
  observeEvent(input$reset, {
    stepIndex$value <- 0
    updateButton.shinyInput(inputId = "nextStep", disabled = FALSE)
  })
  
  output$basicStepper <- renderUI({
    Stepper(
      activeStep = stepIndex$value,
      #alternativeLabel = TRUE,
      #nonLinear = TRUE,
      Step(
        StepLabel("Step 1"),
        StepContent("Content step 1")
      ),
      Step(
        StepLabel("Step 2"),
        StepContent("Content step 2")
      ),
      Step(
        StepLabel("Step 3"),
        StepContent("Content step 3")
      )
    )
  })
  # TextField
  output$BasicTextFieldsValue1 <- renderText({
    paste(input$BasicTextFields1)
  })
  output$BasicTextFieldsValue2 <- renderText({
    paste(input$BasicTextFields2)
  })
  output$BasicTextFieldsValue3 <- renderText({
    paste(input$BasicTextFields3)
  })
  output$inputWithIconValue1 <- renderText({
    paste(input$inputWithIcon1)
  })
  output$inputWithIconValue2 <- renderText({
    paste(input$inputWithIcon2)
  })
}

if (interactive()) {
  shinyApp(ui = ui, server = server)
}
