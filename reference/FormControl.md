# FormControl

<https://mui.com/material-ui/api/form-control/>

## Usage

``` r
FormControl(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is - The content of the component.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- color
  `'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string`  
  Default is 'primary' The color of the component. It supports both
  default and custom theme colors, which can be added as shown in the
  palette customization guide.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- disabled `bool`  
  Default is FALSE If true, the label, input and helper text should be
  displayed in a disabled state.

- error `bool`  
  Default is FALSE If true, the label is displayed in an error state.

- focused `bool`  
  Default is - If true, the component is displayed in focused state.

- fullWidth `bool`  
  Default is FALSE If true, the component will take up the full width of
  its container.

- hiddenLabel `bool`  
  Default is FALSE If true, the label is hidden. This is used to
  increase density for a FilledInput. Be sure to add aria-label to the
  input element.

- margin `'dense'| 'none'| 'normal'`  
  Default is 'none' If dense or normal, will adjust vertical spacing of
  this and contained components.

- required `bool`  
  Default is FALSE If true, the label will indicate that the input is
  required.

- size `'medium'| 'small'| string`  
  Default is 'medium' The size of the component.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- variant `'filled'| 'outlined'| 'standard'`  
  Default is 'outlined' The variant to use.
