# List

<https://mui.com/material-ui/api/list/>

## Usage

``` r
List(...)
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

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- dense `bool`  
  Default is FALSE If true, compact vertical padding designed for
  keyboard and mouse input is used for the list and list items. The prop
  is available to descendant components as the dense context.

- disablePadding `bool`  
  Default is FALSE If true, vertical padding is removed from the list.

- subheader `node`  
  Default is - The content of the subheader, normally ListSubheader.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
