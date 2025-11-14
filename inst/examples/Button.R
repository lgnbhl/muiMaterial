library(muiMaterial)
library(shiny)

# https://mui.com/material-ui/react-button/#basic-button
BasicButtons <- Stack(
  gap = 2,
  Typography("Basic button", variant = "h5"),
  Typography("The Button comes with three variants: text (default), contained, and outlined."),
  Stack(
    spacing = 2,
    direction = "row",
    Button.shinyInput(inputId = "BasicButtons1", variant = "text", "Text"),
    Button.shinyInput(inputId = "BasicButtons2", variant = "contained", "Contained"),
    Button.shinyInput(inputId = "BasicButtons3", variant = "outlined", "Outlined")
  )
)

# https://mui.com/material-ui/react-button/#text-button
TextButtons <- Stack(
  gap = 2,
  Typography("Text button", variant = "h5"),
  Typography("Text buttons are typically used for less-pronounced actions,
             including those located: in dialogs, in cards. In cards, text buttons
             help maintain an emphasis on card content."),
  Stack(
    spacing = 2,
    direction = "row",
    Button.shinyInput(inputId = "TextButtons1", "Primary"),
    Button.shinyInput(inputId = "TextButtons2", disabled = TRUE, "Disabled"),
    Button.shinyInput(inputId = "TextButtons3", href = "#text-buttons", "Link")
  )
)

# https://mui.com/material-ui/react-button/#contained-button
ContainedButtons <- Stack(
  gap = 2,
  Typography("Contained button", variant = "h5"),
  Typography("Contained buttons are high-emphasis, distinguished by their use of
             elevation and fill. They contain actions that are primary to your app."),
  Stack(
    spacing = 2,
    direction = "row",
    Button.shinyInput(inputId = "TextButtons1", variant = "contained", "Contained"),
    Button.shinyInput(inputId = "TextButtons2", variant = "contained", disabled = TRUE, "Disabled"),
    Button.shinyInput(inputId = "TextButtons3", variant="contained", href = "#contained-buttons", "Link")
  ),
  Typography("You can remove the elevation with the disableElevation prop."),
  Box(
    Button.shinyInput(inputId = "TextButtons4", variant = "contained", disableElevation = TRUE, "Disable elevation")
  )
)

# https://mui.com/material-ui/react-button/#outlined-button
OutlinedButtons <- Stack(
  gap = 2,
  Typography("Outlined button", variant = "h5"),
  Typography("Outlined buttons are medium-emphasis buttons. They contain actions
             that are important but aren't the primary action in an app."),
  Typography("Outlined buttons are also a lower emphasis alternative to contained
             buttons, or a higher emphasis alternative to text buttons."),
  Stack(
    spacing = 2,
    direction = "row",
    Button.shinyInput(inputId = "TextButtons1", variant = "outlined", "Primary"),
    Button.shinyInput(inputId = "TextButtons2", variant = "outlined", disabled = TRUE, "Disabled"),
    Button.shinyInput(inputId = "TextButtons3", variant="outlined", href = "#outlined-buttons", "Link")
  )
)

# https://mui.com/material-ui/react-button/#handling-clicks
ClicksButtons <- Stack(
  gap = 2,
  Typography("Handling clicks", variant = "h5"),
  Typography("All components accept an onClick handler that is applied to the root DOM element."),
  Stack(
    spacing = 2,
    direction = "row",
    Button(onClick = JS("() => { alert('clicked'); }"), "Click me")
  )
)

# https://mui.com/material-ui/react-button/#color
ColorButtons <- Stack(
  gap = 2,
  Typography("Color", variant = "h5"),
  Stack(
    spacing = 2,
    direction = "row",
    Button.shinyInput(inputId = "ColorButtons1", color = "secondary", "Secondary"),
    Button.shinyInput(inputId = "ColorButtons2", variant = "contained", color = "success", "Success"),
    Button.shinyInput(inputId = "ColorButtons3", variant = "outlined", color = "error", "Error")
  ),
  Typography("In addition to using the default button colors, you can add custom
             ones, or disable any you don't need. See the Adding new colors examples for more info.")
)

ui_Button <- CssBaseline(
  Box(
    sx = list(flexDirection = 'row', p = 1, gap = "500px"),
    BasicButtons,
    TextButtons,
    ContainedButtons,
    OutlinedButtons,
    ClicksButtons,
    ColorButtons
  )
)

server_Button <- function(input, output, session) { }

if (interactive()) {
  shinyApp(ui = ui_Button, server = server_Button)
}
