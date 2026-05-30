# TextField

<https://mui.com/material-ui/api/text-field/>

## Usage

``` r
TextField(...)

TextField.shinyInput(inputId, ..., value = defaultValue)

updateTextField.shinyInput(
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

- autoComplete `string`  
  Default is - This prop helps users to fill forms faster, especially on
  mobile devices. The name can be confusing, as it's more like an
  autofill. You can learn more about it following the specification.

- autoFocus `bool`  
  Default is FALSE If true, the input element is focused during the
  first mount.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- color
  `'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string`  
  Default is 'primary' The color of the component. It supports both
  default and custom theme colors, which can be added as shown in the
  palette customization guide.

- defaultValue `any`  
  Default is - The default value. Use when the component is not
  controlled.

- disabled `bool`  
  Default is FALSE If true, the component is disabled.

- error `bool`  
  Default is FALSE If true, the label is displayed in an error state.

- FormHelperTextProps `object`  
  Default is - Props applied to the FormHelperText element.Deprecated
  Use slotProps.formHelperText instead. This prop will be removed in a
  future major release. See Migrating from deprecated APIs for more
  details.

- fullWidth `bool`  
  Default is FALSE If true, the input will take up the full width of its
  container.

- helperText `node`  
  Default is - The helper text content.

- id `string`  
  Default is - The id of the input element. Use this prop to make label
  and helperText accessible for screen readers.

- InputLabelProps `object`  
  Default is - Props applied to the InputLabel element. Pointer events
  like onClick are enabled if and only if shrink is true.Deprecated Use
  slotProps.inputLabel instead. This prop will be removed in a future
  major release. See Migrating from deprecated APIs for more details.

- inputProps `object`  
  Default is - Attributes applied to the input element.Deprecated Use
  slotProps.htmlInput instead. This prop will be removed in a future
  major release. See Migrating from deprecated APIs for more details.

- InputProps `object`  
  Default is - Props applied to the Input element. It will be a
  FilledInput, OutlinedInput or Input component depending on the variant
  prop value.Deprecated Use slotProps.input instead. This prop will be
  removed in a future major release. See Migrating from deprecated APIs
  for more details.

- inputRef `ref`  
  Default is - Pass a ref to the input element.

- label `node`  
  Default is - The label content.

- margin `'dense'| 'none'| 'normal'`  
  Default is 'none' If dense or normal, will adjust vertical spacing of
  this and contained components.

- maxRows `number| string`  
  Default is - Maximum number of rows to display when multiline option
  is set to true.

- minRows `number| string`  
  Default is - Minimum number of rows to display when multiline option
  is set to true.

- multiline `bool`  
  Default is FALSE If true, a textarea element is rendered instead of an
  input.

- name `string`  
  Default is - Name attribute of the input element.

- onChange `func`  
  Default is - Callback fired when the value is
  changed.Signature:function(event: object) = voidevent The event source
  of the callback. You can pull out the new value by accessing
  event.target.value (string).

- placeholder `string`  
  Default is - The short hint displayed in the input before the user
  enters a value.

- required `bool`  
  Default is FALSE If true, the label is displayed as required and the
  input element is required.

- rows `number| string`  
  Default is - Number of rows to display when multiline option is set to
  true.

- select `bool`  
  Default is FALSE Render a Select element while passing the Input
  element to Select as input parameter. If this option is set you must
  pass the options of the select as children.

- SelectProps `object`  
  Default is - Props applied to the Select element.Deprecated Use
  slotProps.select instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- size `'medium'| 'small'| string`  
  Default is 'medium' The size of the component.

- slotProps
  `{ formHelperText?: func| object, htmlInput?: func| object, input?: func| object, inputLabel?: func| object, select?: func| object }`  
  Default is The props used for each slot inside.

- slots
  `{ formHelperText?: elementType, htmlInput?: elementType, input?: elementType, inputLabel?: elementType, root?: elementType, select?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- type `string`  
  Default is - Type of the input element. It should be a valid HTML5
  input type.

- value `any`  
  Default is - The value of the input element, required for a controlled
  component.

- variant `'filled'| 'outlined'| 'standard'`  
  Default is 'outlined' The variant to use.

## Examples

``` r
if (FALSE) { # interactive()
library(shiny)
library(muiMaterial)

ui <- muiMaterialPage(
  TextField.shinyInput("txt", label = "Your name", value = ""),
  verbatimTextOutput("out")
)

server <- function(input, output, session) {
  output$out <- renderPrint(input$txt)
}

shinyApp(ui, server)
}
```
