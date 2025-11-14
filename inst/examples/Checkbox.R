library(muiMaterial)
library(shiny)

# https://mui.com/material-ui/react-checkbox/#basic-checkboxes
Checkboxes <- div(
  Typography("Basic checkboxes", variant = "h5"),
  Checkbox.shinyInput(inputId = "Checkboxes1", value = TRUE),
  Checkbox.shinyInput(inputId = "Checkboxes2", value = FALSE),
  Checkbox.shinyInput(inputId = "Checkboxes3", disabled = TRUE),
  Checkbox.shinyInput(inputId = "Checkboxes4",disabled = TRUE, checked = TRUE),
  Stack(
    spacing = 2,
    direction = "row",
    verbatimTextOutput("CheckboxesValue1")
  )
)
# https://mui.com/material-ui/react-checkbox/#label
CheckboxLabels <- div(
  Typography("Label", variant = "h5"),
  Typography("You can provide a label to the Checkbox
             thanks to the FormControlLabel component.", variant = "body1"),
  FormGroup(
    FormControlLabel(
      control = Checkbox.shinyInput(inputId = "CheckboxLabels1"),
      label = "Label"
    ),
    FormControlLabel(
      required = TRUE,
      control = Checkbox.shinyInput(inputId = "CheckboxLabels2"),
      label = "Required"
    ),
    FormControlLabel(
      disabled = TRUE,
      control = Checkbox.shinyInput(inputId = "CheckboxLabels3"),
      label = "Disabled"
    )
  )
)
# https://mui.com/material-ui/react-checkbox/#size
SizeCheckboxes <- div(
  Typography("Size", variant = "h5"),
  Typography("Use the size prop or customize the font size of the svg icons
             to change the size of the checkboxes.", variant = "body1"),
  Checkbox(defaultChecked = TRUE, size="small"),
  Checkbox(defaultChecked = TRUE),
  Checkbox(sx = list('& .MuiSvgIcon-root' = list(fontSize = 28)))
)
# https://mui.com/material-ui/react-checkbox/#color
ColorCheckboxes <- div(
  Typography("Color", variant = "h5"),
  Checkbox.shinyInput(inputId = "ColorCheckboxes1", value = TRUE),
  Checkbox.shinyInput(inputId = "ColorCheckboxes2", value = TRUE, color = "secondary"),
  Checkbox.shinyInput(inputId = "ColorCheckboxes3", value = TRUE, color = "success"),
  Checkbox.shinyInput(inputId = "ColorCheckboxes4", value = TRUE, color = "default"),
  Checkbox.shinyInput(inputId = "ColorCheckboxes5", value = TRUE, sx = list(
    color = "#ad1457", # equivalent to pink[800]
    "&.Mui-checked" = list(color = "#d81b60") # equivalent to pink[600]
  ))
)
# https://mui.com/material-ui/react-checkbox/#controlled
# TODO
# https://mui.com/material-ui/react-checkbox/#indeterminate
# TODO
# https://mui.com/material-ui/react-checkbox/#formgroup
# TODO
# https://mui.com/material-ui/react-checkbox/#icon
IconCheckboxes <- div(
  Typography("Icon", variant = "h5"),
  Checkbox.shinyInput(inputId = "IconCheckboxes",
    icon = shiny::icon("heart", class = "fa-regular"),
    checkedIcon = shiny::icon("heart", class = "fa-solid")
  ),
  Checkbox.shinyInput(inputId = "IconCheckboxe2",
    icon = shiny::icon("bookmark", class = "fa-regular"),
    checkedIcon = shiny::icon("bookmark", class = "fa-solid")
  )
)
# https://mui.com/material-ui/react-checkbox/#label-placement
FormControlLabelPosition <- div(
  Typography("Label placement", variant = "h5"),
  FormControl(component = "fieldset",
    FormLabel(component = "legend", "Label placement"),
    FormGroup('aria-label' = "position", row = TRUE,
      FormControlLabel(
        value = "bottom",
        control = Checkbox.shinyInput(
          inputId = "FormControlLabelPosition1",
          value = TRUE
        ),
        label = "Bottom",
        labelPlacement = "bottom"
      ),
      FormControlLabel(
        value = "end",
        control = Checkbox.shinyInput(
          inputId = "FormControlLabelPosition2",
          value = FALSE
        ),
        label = "End",
        labelPlacement = "end"
      )
    )
  )
)
# https://mui.com/material-ui/react-checkbox/#customization
# TODO

ui_Checkbox <- muiMaterialPage(
  CssBaseline(
    Box(
      sx = list(flexDirection = 'row', p = 1),
      Checkboxes,
      CheckboxLabels,
      SizeCheckboxes,
      ColorCheckboxes,
      IconCheckboxes,
      FormControlLabelPosition
    )
  )
)

server_Checkbox <- function(input, output, session) {
  output$CheckboxesValue1 <- renderText({
    paste(input$Checkboxes1)
  })
}

if (interactive()) {
  shinyApp(ui = ui_Checkbox, server = server_Checkbox)
}
