# Checkbox

<https://mui.com/material-ui/api/checkbox/>

## Usage

``` r
Checkbox(...)

Checkbox.shinyInput(inputId, ..., value = defaultValue)

updateCheckbox.shinyInput(
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

- checked `bool`  
  Default is - If true, the component is checked.

- checkedIcon `node`  
  Default is CheckBoxIcon / The icon to display when the component is
  checked.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- color
  `'default'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string`  
  Default is 'primary' The color of the component. It supports both
  default and custom theme colors, which can be added as shown in the
  palette customization guide.

- defaultChecked `bool`  
  Default is - The default checked state. Use when the component is not
  controlled.

- disabled `bool`  
  Default is FALSE If true, the component is disabled.

- disableRipple `bool`  
  Default is FALSE If true, the ripple effect is disabled.

- icon `node`  
  Default is CheckBoxOutlineBlankIcon / The icon to display when the
  component is unchecked.

- id `string`  
  Default is - The id of the input element.

- indeterminate `bool`  
  Default is FALSE If true, the component appears indeterminate. This
  does not set the native input element to indeterminate due to
  inconsistent behavior across browsers. However, we set a
  data-indeterminate attribute on the input.

- indeterminateIcon `node`  
  Default is IndeterminateCheckBoxIcon / The icon to display when the
  component is indeterminate.

- inputProps `object`  
  Default is - Attributes applied to the input element.Deprecated Use
  slotProps.input instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- onChange `func`  
  Default is - Callback fired when the state is
  changed.Signature:function(event: React.ChangeEvent) = voidevent The
  event source of the callback. You can pull out the new checked state
  by accessing event.target.checked (boolean).

- required `bool`  
  Default is FALSE If true, the input element is required.

- size `'medium'| 'small'| string`  
  Default is 'medium' The size of the component. small is equivalent to
  the dense checkbox styling.

- slotProps `{ input?: func| object, root?: func| object }`  
  Default is The props used for each slot inside.

- slots `{ input?: elementType, root?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- value `any`  
  Default is - The value of the component. The DOM API casts this to a
  string. The browser uses "on" as the default value.
