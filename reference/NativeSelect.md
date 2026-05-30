# NativeSelect

<https://mui.com/material-ui/api/native-select/>

## Usage

``` r
NativeSelect(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is - The option elements to populate the select with. Can be
  some option elements.

- classes `object`  
  Default is Override or extend the styles applied to the component.See
  CSS classes API below for more details.

- IconComponent `elementType`  
  Default is ArrowDropDownIcon The icon that displays the arrow.

- input `element`  
  Default is Input / An Input element; does not have to be a material-ui
  specific Input.

- inputProps `object`  
  Default is - Attributes applied to the select element.

- onChange `func`  
  Default is - Callback fired when a menu item is
  selected.Signature:function(event: React.ChangeEvent) = voidevent The
  event source of the callback. You can pull out the new value by
  accessing event.target.value (string).

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- value `any`  
  Default is - The input value. The DOM API casts this to a string.

- variant `'filled'| 'outlined'| 'standard'`  
  Default is - The variant to use.
