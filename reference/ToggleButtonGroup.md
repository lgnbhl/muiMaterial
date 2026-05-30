# ToggleButtonGroup

<https://mui.com/material-ui/api/toggle-button-group/>

## Usage

``` r
ToggleButtonGroup(...)

ToggleButtonGroup.shinyInput(inputId, ..., value = defaultValue)

updateToggleButtonGroup.shinyInput(
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

- value:

  Starting value.

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
  `'standard'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string`  
  Default is 'standard' The color of the button when it is selected. It
  supports both default and custom theme colors, which can be added as
  shown in the palette customization guide.

- disabled `bool`  
  Default is FALSE If true, the component is disabled. This implies that
  all ToggleButton children will be disabled.

- exclusive `bool`  
  Default is FALSE If true, only allow one of the child ToggleButton
  values to be selected.

- fullWidth `bool`  
  Default is FALSE If true, the button group will take up the full width
  of its container.

- onChange `func`  
  Default is - Callback fired when the value
  changes.Signature:function(event: React.MouseEvent, value: any) =
  voidevent The event source of the callback.value of the selected
  buttons. When exclusive is true this is a single value; when false an
  array of selected values. If no value is selected and exclusive is
  true the value is null; when false an empty array.

- orientation `'horizontal'| 'vertical'`  
  Default is 'horizontal' The component orientation (layout flow
  direction).

- size `'small'| 'medium'| 'large'| string`  
  Default is 'medium' The size of the component.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- value `any`  
  Default is - The currently selected value within the group or an array
  of selected values when exclusive is false.The value must have
  reference equality with the option in order to be selected.
