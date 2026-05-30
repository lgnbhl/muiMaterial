# ToggleButton

<https://mui.com/material-ui/api/toggle-button/>

## Usage

``` r
ToggleButton(...)

ToggleButton.shinyInput(inputId, ...)

updateToggleButton.shinyInput(
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

- value `any`  
  Default is - The value to associate with the button when selected in a
  ToggleButtonGroup.

- children `node`  
  Default is - The content of the component.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- color
  `'standard'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string`  
  Default is 'standard' The color of the button when it is in an active
  state. It supports both default and custom theme colors, which can be
  added as shown in the palette customization guide.

- disabled `bool`  
  Default is FALSE If true, the component is disabled.

- disableFocusRipple `bool`  
  Default is FALSE If true, the keyboard focus ripple is disabled.

- disableRipple `bool`  
  Default is FALSE If true, the ripple effect is disabled. Without a
  ripple there is no styling for :focus-visible by default. Be sure to
  highlight the element by applying separate styles with the
  .Mui-focusVisible class.

- fullWidth `bool`  
  Default is FALSE If true, the button will take up the full width of
  its container.

- onChange `func`  
  Default is - Callback fired when the state
  changes.Signature:function(event: React.MouseEvent, value: any) =
  voidevent The event source of the callback.value of the selected
  button.

- onClick `func`  
  Default is - Callback fired when the button is
  clicked.Signature:function(event: React.MouseEvent, value: any) =
  voidevent The event source of the callback.value of the selected
  button.

- selected `bool`  
  Default is - If true, the button is rendered in an active state.

- size `'small'| 'medium'| 'large'| string`  
  Default is 'medium' The size of the component. The prop defaults to
  the value inherited from the parent ToggleButtonGroup component.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
