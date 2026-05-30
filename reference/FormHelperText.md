# FormHelperText

<https://mui.com/material-ui/api/form-helper-text/>

## Usage

``` r
FormHelperText(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is NA The content of the component.If ' ' is provided, the
  component reserves one line height for displaying a future message.

- classes `object`  
  Default is NA Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is NA The component used for the root node. Either a string to
  use a HTML element or a component.

- disabled `bool`  
  Default is NA If true, the helper text should be displayed in a
  disabled state.

- error `bool`  
  Default is NA If true, helper text should be displayed in an error
  state.

- filled `bool`  
  Default is NA If true, the helper text should use filled classes key.

- focused `bool`  
  Default is NA If true, the helper text should use focused classes key.

- margin `'dense'`  
  Default is NA If dense, will adjust vertical spacing. This is normally
  obtained via context from FormControl.

- required `bool`  
  Default is NA If true, the helper text should use required classes
  key.

- sx `Array func| object| bool | func| object`  
  Default is NA The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- variant `'filled'| 'outlined'| 'standard'| string`  
  Default is NA The variant to use.
