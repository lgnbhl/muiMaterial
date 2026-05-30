# InputAdornment

<https://mui.com/material-ui/api/input-adornment/>

## Usage

``` r
InputAdornment(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- position `'end'| 'start'`  
  Default is - The position this adornment should appear relative to the
  Input.

- children `node`  
  Default is - The content of the component, normally an IconButton or
  string.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- disablePointerEvents `bool`  
  Default is FALSE Disable pointer events on the root. This allows for
  the content of the adornment to focus the input on click.

- disableTypography `bool`  
  Default is FALSE If children is a string then disable wrapping in a
  Typography component.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- variant `'filled'| 'outlined'| 'standard'`  
  Default is - The variant to use. Note: If you are using the TextField
  component or the FormControl component you do not have to set this
  manually.
