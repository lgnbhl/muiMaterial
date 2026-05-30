# Icon

<https://mui.com/material-ui/api/icon/>

## Usage

``` r
Icon(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- baseClassName `string`  
  Default is 'material-icons' The base class applied to the icon.
  Defaults to 'material-icons', but can be changed to any other base
  class that suits the icon font you're using (for example
  material-icons-rounded, fas, etc).

- children `node`  
  Default is - The name of the icon font ligature.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- color
  `'inherit'| 'action'| 'disabled'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string`  
  Default is 'inherit' The color of the component. It supports both
  default and custom theme colors, which can be added as shown in the
  palette customization guide.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- fontSize `'inherit'| 'large'| 'medium'| 'small'| string`  
  Default is 'medium' The fontSize applied to the icon. Defaults to
  24px, but can be configure to inherit font size.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
