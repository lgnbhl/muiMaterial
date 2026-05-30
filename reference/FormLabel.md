# FormLabel

<https://mui.com/material-ui/api/form-label/>

## Usage

``` r
FormLabel(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is NA The content of the component.

- classes `object`  
  Default is NA Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- color
  `'error'| 'info'| 'primary'| 'secondary'| 'success'| 'warning'| string`  
  Default is NA The color of the component. It supports both default and
  custom theme colors, which can be added as shown in the palette
  customization guide.

- component `elementType`  
  Default is NA The component used for the root node. Either a string to
  use a HTML element or a component.

- disabled `bool`  
  Default is NA If true, the label should be displayed in a disabled
  state.

- error `bool`  
  Default is NA If true, the label is displayed in an error state.

- filled `bool`  
  Default is NA If true, the label should use filled classes key.

- focused `bool`  
  Default is NA If true, the input of this label is focused (used by
  FormGroup components).

- required `bool`  
  Default is NA If true, the label will indicate that the input is
  required.

- sx `Array func| object| bool | func| object`  
  Default is NA The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
