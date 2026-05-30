# RadioGroup

<https://mui.com/material-ui/api/radio-group/>

## Usage

``` r
RadioGroup(...)

RadioGroup.shinyInput(inputId, ..., value = defaultValue)

updateRadioGroup.shinyInput(
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
  Default is NA The content of the component.

- defaultValue `any`  
  Default is NA The default value. Use when the component is not
  controlled.

- name `string`  
  Default is NA The name used to reference the value of the control. If
  you don't provide this prop, it falls back to a randomly generated
  name.

- onChange `func`  
  Default is NA Callback fired when a radio button is
  selected.Signature:function(event: React.ChangeEvent, value: string) =
  voidevent The event source of the callback.value The value of the
  selected radio button. You can pull out the new value by accessing
  event.target.value (string).

- value `any`  
  Default is NA Value of the selected radio button. The DOM API casts
  this to a string.
