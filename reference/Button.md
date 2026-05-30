# Button

<https://mui.com/material-ui/api/button/>

## Usage

``` r
Button(...)

Button.shinyInput(inputId, ...)

updateButton.shinyInput(
  session = shiny::getDefaultReactiveDomain(),
  inputId,
  ...
)
```

## Arguments

- ...:

  Props to pass to the component.

- inputId:

  ID of the component.

- session:

  Object passed as the \`session\` argument to Shiny server.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is - The content of the component.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- color
  `'inherit'| 'primary'| 'secondary'| 'success'| 'error'| 'info'| 'warning'| string`  
  Default is 'primary' The color of the component. It supports both
  default and custom theme colors, which can be added as shown in the
  palette customization guide.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- disabled `bool`  
  Default is FALSE If true, the component is disabled.

- disableElevation `bool`  
  Default is FALSE If true, no elevation is used.

- disableFocusRipple `bool`  
  Default is FALSE If true, the keyboard focus ripple is disabled.

- disableRipple `bool`  
  Default is FALSE If true, the ripple effect is disabled. Without a
  ripple there is no styling for :focus-visible by default. Be sure to
  highlight the element by applying separate styles with the
  .Mui-focusVisible class.

- endIcon `node`  
  Default is - Element placed after the children.

- fullWidth `bool`  
  Default is FALSE If true, the button will take up the full width of
  its container.

- href `string`  
  Default is - The URL to link to when the button is clicked. If
  defined, an a element will be used as the root node.

- loading `bool`  
  Default is null If true, the loading indicator is visible and the
  button is disabled. If true \| false, the loading wrapper is always
  rendered before the children to prevent Google Translation Crash.

- loadingIndicator `node`  
  Default is CircularProgress color="inherit" size=16 / Element placed
  before the children if the button is in loading state. The node should
  contain an element with role="progressbar" with an accessible name. By
  default, it renders a CircularProgress that is labeled by the button
  itself.

- loadingPosition `'center'| 'end'| 'start'`  
  Default is 'center' The loading indicator can be positioned on the
  start, end, or the center of the button.

- size `'small'| 'medium'| 'large'| string`  
  Default is 'medium' The size of the component. small is equivalent to
  the dense button styling.

- startIcon `node`  
  Default is - Element placed before the children.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- variant `'contained'| 'outlined'| 'text'| string`  
  Default is 'text' The variant to use.

## Examples

``` r
if (FALSE) { # interactive()
library(shiny)
library(muiMaterial)

ui <- muiMaterialPage(
  Button.shinyInput("btn", "Click me", variant = "contained"),
  verbatimTextOutput("count")
)

server <- function(input, output, session) {
  output$count <- renderPrint(input$btn)
}

shinyApp(ui, server)
}
```
