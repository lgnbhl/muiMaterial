# Toolbar

<https://mui.com/material-ui/api/toolbar/>

## Usage

``` r
Toolbar(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is - The Toolbar children, usually a mixture of IconButton,
  Button and Typography. The Toolbar is a flex container, allowing flex
  item properties to be used to lay out the children.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- disableGutters `bool`  
  Default is FALSE If true, disables gutter padding.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- variant `'dense'| 'regular'| string`  
  Default is 'regular' The variant to use.
