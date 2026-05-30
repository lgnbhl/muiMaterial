# Step

<https://mui.com/material-ui/api/step/>

## Usage

``` r
Step(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- active `bool`  
  Default is - Sets the step as active. Is passed to child components.

- children `node`  
  Default is - Should be Step sub-components such as StepLabel,
  StepContent.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- completed `bool`  
  Default is - Mark the step as completed. Is passed to child
  components.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- disabled `bool`  
  Default is - If true, the step is disabled, will also disable the
  button if StepButton is a child of Step. Is passed to child
  components.

- expanded `bool`  
  Default is FALSE Expand the step.

- index `integer`  
  Default is - The position of the step. The prop defaults to the value
  inherited from the parent Stepper component.

- last `bool`  
  Default is - If true, the Step is displayed as rendered last. The prop
  defaults to the value inherited from the parent Stepper component.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
