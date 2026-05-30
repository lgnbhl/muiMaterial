# ImageList

<https://mui.com/material-ui/api/image-list/>

## Usage

``` r
ImageList(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is - The content of the component, normally ImageListItems.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- cols `integer`  
  Default is 2 Number of columns.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- gap `number`  
  Default is 4 The gap between items in px.

- rowHeight `'auto'| number`  
  Default is 'auto' The height of one row in px.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- variant `'masonry'| 'quilted'| 'standard'| 'woven'| string`  
  Default is 'standard' The variant to use.
