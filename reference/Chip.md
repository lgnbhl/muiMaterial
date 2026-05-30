# Chip

<https://mui.com/material-ui/api/chip/>

## Usage

``` r
Chip(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- avatar `element`  
  Default is - The Avatar element to display.

- children `unsupportedProp`  
  Default is - This prop isn't supported. Use the component prop if you
  need to change the children structure.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- clickable `bool`  
  Default is - If true, the chip will appear clickable, and will raise
  when pressed, even if the onClick prop is not defined. If false, the
  chip will not appear clickable, even if onClick prop is defined. This
  can be used, for example, along with the component prop to indicate an
  anchor Chip is clickable. Note: this controls the UI and does not
  affect the onClick event.

- color
  `'default'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string`  
  Default is 'default' The color of the component. It supports both
  default and custom theme colors, which can be added as shown in the
  palette customization guide.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- deleteIcon `element`  
  Default is - Override the default delete icon element. Shown only if
  onDelete is set.

- disabled `bool`  
  Default is FALSE If true, the component is disabled.

- icon `element`  
  Default is - Icon element.

- label `node`  
  Default is - The content of the component.

- onDelete `func`  
  Default is - Callback fired when the delete icon is clicked. If set,
  the delete icon will be shown.

- size `'medium'| 'small'| string`  
  Default is 'medium' The size of the component.

- skipFocusWhenDisabled `bool`  
  Default is FALSE If true, allows the disabled chip to escape focus. If
  false, allows the disabled chip to receive focus.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- variant `'filled'| 'outlined'| string`  
  Default is 'filled' The variant to use.
