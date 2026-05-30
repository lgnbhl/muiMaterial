# Select

<https://mui.com/material-ui/api/select/>

## Usage

``` r
Select(...)

Select.shinyInput(inputId, ..., value = defaultValue)

updateSelect.shinyInput(
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

- autoWidth `bool`  
  Default is FALSE If true, the width of the popover will automatically
  be set according to the items inside the menu, otherwise it will be at
  least the width of the select input.

- children `node`  
  Default is - The option elements to populate the select with. Can be
  some MenuItem when native is false and option when native is true. The
  MenuItem elements must be direct descendants when native is false.

- classes `object`  
  Default is Override or extend the styles applied to the component.See
  CSS classes API below for more details.

- defaultOpen `bool`  
  Default is FALSE If true, the component is initially open. Use when
  the component open state is not controlled (i.e. the open prop is not
  defined). You can only use it when the native prop is false (default).

- defaultValue `any`  
  Default is - The default value. Use when the component is not
  controlled.

- displayEmpty `bool`  
  Default is FALSE If true, a value is displayed even if no items are
  selected.In order to display a meaningful value, a function can be
  passed to the renderValue prop which returns the value to be displayed
  when no items are selected. When using this prop, make sure the label
  doesn't overlap with the empty displayed value. The label should
  either be hidden or forced to a shrunk state.

- IconComponent `elementType`  
  Default is ArrowDropDownIcon The icon that displays the arrow.

- id `string`  
  Default is - The id of the wrapper element or the select element when
  native.

- input `element`  
  Default is - An Input element; does not have to be a material-ui
  specific Input.

- inputProps `object`  
  Default is - Attributes applied to the input element. When native is
  true, the attributes are applied on the select element.

- label `node`  
  Default is - See OutlinedInput#label

- labelId `string`  
  Default is - The ID of an element that acts as an additional label.
  The Select will be labelled by the additional label and the selected
  value.

- MenuProps `object`  
  Default is - Props applied to the Menu element.

- multiple `bool`  
  Default is FALSE If true, value must be an array and the menu will
  support multiple selections.

- native `bool`  
  Default is FALSE If true, the component uses a native select element.

- onChange `func`  
  Default is - Callback fired when a menu item is
  selected.Signature:function(event: SelectChangeEvent, child?: object)
  = voidevent The event source of the callback. You can pull out the new
  value by accessing event.target.value (any). Warning: This is a
  generic event, not a change event, unless the change event is caused
  by browser autofill.child The react element that was selected when
  native is false (default).

- onClose `func`  
  Default is - Callback fired when the component requests to be closed.
  Use it in either controlled (see the open prop), or uncontrolled mode
  (to detect when the Select collapses).Signature:function(event:
  object) = voidevent The event source of the callback.

- onOpen `func`  
  Default is - Callback fired when the component requests to be opened.
  Use it in either controlled (see the open prop), or uncontrolled mode
  (to detect when the Select expands).Signature:function(event: object)
  = voidevent The event source of the callback.

- open `bool`  
  Default is - If true, the component is shown. You can only use it when
  the native prop is false (default).

- renderValue `func`  
  Default is - Render the selected value. You can only use it when the
  native prop is false (default).Signature:function(value: any) =
  ReactNodevalue The value provided to the component.

- SelectDisplayProps `object`  
  Default is - Props applied to the clickable div element.

- sx `Array`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- value `''| any`  
  Default is - The input value. Providing an empty string will select no
  options. Set to an empty string ” if you don't want any of the
  available options to be selected.If the value is an object it must
  have reference equality with the option in order to be selected. If
  the value is not an object, the string representation must match with
  the string representation of the option in order to be selected.

- variant `'filled'| 'outlined'| 'standard'`  
  Default is 'outlined' The variant to use.
