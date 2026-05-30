# StepButton

<https://mui.com/material-ui/api/step-button/>

## Usage

``` r
StepButton(...)

StepButton.shinyInput(inputId, ...)

updateStepButton.shinyInput(
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
  Default is NA Can be a StepLabel or a node to place inside StepLabel
  as children.

- classes `object`  
  Default is NA Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- icon `node`  
  Default is NA The icon displayed by the step label.

- optional `node`  
  Default is NA The optional node to display.

- sx `Array func| object| bool | func| object`  
  Default is NA The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
