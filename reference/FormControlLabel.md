# FormControlLabel

<https://mui.com/material-ui/api/form-control-label/>

## Usage

``` r
FormControlLabel(...)

FormControlLabel.shinyInput(inputId, ..., value = defaultValue)

updateFormControlLabel.shinyInput(
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

- control `element`  
  Default is - A control element. For instance, it can be a Radio, a
  Switch or a Checkbox.

- checked `bool`  
  Default is - If true, the component appears selected.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- componentsProps `{ typography?: object }`  
  Default is The props used for each slot inside.Deprecated use the
  slotProps prop instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- disabled `bool`  
  Default is - If true, the control is disabled.

- disableTypography `bool`  
  Default is - If true, the label is rendered as it is passed without an
  additional typography node.

- inputRef `ref`  
  Default is - Pass a ref to the input element.

- label `node`  
  Default is - A text or an element to be used in an enclosing label
  element.

- labelPlacement `'bottom'| 'end'| 'start'| 'top'`  
  Default is 'end' The position of the label.

- onChange `func`  
  Default is - Callback fired when the state is
  changed.Signature:function(event: React.SyntheticEvent) = voidevent
  The event source of the callback. You can pull out the new checked
  state by accessing event.target.checked (boolean).

- required `bool`  
  Default is - If true, the label will indicate that the input is
  required.

- slotProps `{ typography?: func| object }`  
  Default is The props used for each slot inside.

- slots `{ typography?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- value `any`  
  Default is - The value of the component.
