# Divider

<https://mui.com/material-ui/api/divider/>

## Usage

``` r
Divider(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- absolute `bool`  
  Default is FALSE Absolutely position the element.

- children `node`  
  Default is - The content of the component.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- flexItem `bool`  
  Default is FALSE If true, a vertical divider will have the correct
  height when used in flex container. (By default, a vertical divider
  will have a calculated height of 0px if it is the child of a flex
  container.)

- light `bool`  
  Default is FALSE If true, the divider will have a lighter
  color.Deprecated Use Divider sx= opacity: 0.6 / (or any opacity or
  color) instead. See Migrating from deprecated APIs for more details.

- orientation `'horizontal'| 'vertical'`  
  Default is 'horizontal' The component orientation.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- textAlign `'center'| 'left'| 'right'`  
  Default is 'center' The text alignment.

- variant `'fullWidth'| 'inset'| 'middle'| string`  
  Default is 'fullWidth' The variant to use.
