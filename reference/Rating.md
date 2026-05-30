# Rating

<https://mui.com/material-ui/api/rating/>

## Usage

``` r
Rating(...)

Rating.shinyInput(inputId, ..., value = defaultValue)

updateRating.shinyInput(
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

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- defaultValue `number`  
  Default is null The default value. Use when the component is not
  controlled.

- disabled `bool`  
  Default is FALSE If true, the component is disabled.

- emptyIcon `node`  
  Default is StarBorder fontSize="inherit" / The icon to display when
  empty.

- emptyLabelText `node`  
  Default is 'Empty' The label read when the rating input is empty.

- getLabelText `func`  
  Default is function defaultLabelText(value) return
  `$value || '0' Star$value !== 1 ? 's' : ''`; Accepts a function which
  returns a string value that provides a user-friendly name for the
  current value of the rating. This is important for screen reader
  users.For localization purposes, you can use the provided
  translations.Signature:function(value: number) = stringvalue The
  rating label's value to format.

- highlightSelectedOnly `bool`  
  Default is FALSE If true, only the selected icon will be highlighted.

- icon `node`  
  Default is Star fontSize="inherit" / The icon to display.

- IconContainerComponent `elementType`  
  Default is function IconContainer(props) const value, ...other =
  props; return span ...other / ; The component containing the
  icon.Deprecated Use slotProps.icon.component instead. This prop will
  be removed in a future major release. See Migrating from deprecated
  APIs for more details.

- max `number`  
  Default is 5 Maximum rating.

- name `string`  
  Default is - The name attribute of the radio input elements. This
  input name should be unique within the page. Being unique within a
  form is insufficient since the name is used to generate IDs.

- onChange `func`  
  Default is - Callback fired when the value
  changes.Signature:function(event: React.SyntheticEvent, value: number
  \| null) = voidevent The event source of the callback.value The new
  value.

- onChangeActive `func`  
  Default is - Callback function that is fired when the hover state
  changes.Signature:function(event: React.SyntheticEvent, value: number)
  = voidevent The event source of the callback.value The new value.

- precision `number`  
  Default is 1 The minimum increment value change allowed.

- readOnly `bool`  
  Default is FALSE Removes all hover effects and pointer events.

- size `'small'| 'medium'| 'large'| string`  
  Default is 'medium' The size of the component.

- slotProps
  `{ decimal?: func| object, icon?: func| object, label?: func| object, root?: func| object }`  
  Default is The props used for each slot inside.

- slots
  `{ decimal?: elementType, icon?: elementType, label?: elementType, root?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- value `number`  
  Default is - The rating value.
