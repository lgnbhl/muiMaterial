# Fab

<https://mui.com/material-ui/api/fab/>

## Usage

``` r
Fab(...)

Fab.shinyInput(inputId, ...)

updateFab.shinyInput(session = shiny::getDefaultReactiveDomain(), inputId, ...)
```

## Arguments

- ...:

  Props to pass to the component.

- inputId:

  ID of the component.

- session:

  Object passed as the \`session\` argument to Shiny server.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is - The content of the component.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- color
  `'default'| 'error'| 'info'| 'inherit'| 'primary'| 'secondary'| 'success'| 'warning'| string`  
  Default is 'default' The color of the component. It supports both
  default and custom theme colors, which can be added as shown in the
  palette customization guide.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- disabled `bool`  
  Default is FALSE If true, the component is disabled.

- disableFocusRipple `bool`  
  Default is FALSE If true, the keyboard focus ripple is disabled.

- disableRipple `bool`  
  Default is - If true, the ripple effect is disabled.

- href `string`  
  Default is - The URL to link to when the button is clicked. If
  defined, an a element will be used as the root node.

- size `'small'| 'medium'| 'large'| string`  
  Default is 'large' The size of the component. small is equivalent to
  the dense button styling.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- variant `'circular'| 'extended'| string`  
  Default is 'circular' The variant to use.
