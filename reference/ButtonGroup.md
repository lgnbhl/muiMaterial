# ButtonGroup

<https://mui.com/material-ui/api/button-group/>

## Usage

``` r
ButtonGroup(...)
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
  `'inherit'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string`  
  Default is 'primary' The color of the component. It supports both
  default and custom theme colors, which can be added as shown in the
  palette customization guide.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- disabled `bool`  
  Default is FALSE If true, the component is disabled.

- disableElevation `bool`  
  Default is FALSE If true, no elevation is used.

- disableFocusRipple `bool`  
  Default is FALSE If true, the button keyboard focus ripple is
  disabled.

- disableRipple `bool`  
  Default is FALSE If true, the button ripple effect is disabled.

- fullWidth `bool`  
  Default is FALSE If true, the buttons will take up the full width of
  its container.

- orientation `'horizontal'| 'vertical'`  
  Default is 'horizontal' The component orientation (layout flow
  direction).

- size `'small'| 'medium'| 'large'| string`  
  Default is 'medium' The size of the component. small is equivalent to
  the dense button styling.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- variant `'contained'| 'outlined'| 'text'| string`  
  Default is 'outlined' The variant to use.
