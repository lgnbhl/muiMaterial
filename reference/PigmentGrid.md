# PigmentGrid

<https://mui.com/material-ui/api/pigment-grid/>

## Usage

``` r
PigmentGrid(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is - The content of the component.

- columns `Array number | number| object`  
  Default is 12 The number of columns.

- columnSpacing `Array number| string | number| object| string`  
  Default is - Defines the horizontal space between the type item
  components. It overrides the value of the spacing prop.

- container `bool`  
  Default is FALSE If true, the component will have the flex container
  behavior. You should be wrapping items with a container.

- direction
  `'column'| 'column-reverse'| 'row'| 'row-reverse'| Array 'column'| 'column-reverse'| 'row'| 'row-reverse' | object`  
  Default is 'row' Defines the flex-direction style property. It is
  applied for all screen sizes.

- offset `Array number | number| object`  
  Default is - Defines the offset of the grid.

- rowSpacing `Array number| string | number| object| string`  
  Default is - Defines the vertical space between the type item
  components. It overrides the value of the spacing prop.

- size `Array number | number| object`  
  Default is - Defines the column size of the grid.

- spacing `Array number| string | number| object| string`  
  Default is 0 Defines the space between the type item components. It
  can only be used on a type container component.

- wrap `'nowrap'| 'wrap-reverse'| 'wrap'`  
  Default is 'wrap' Defines the flex-wrap style property. It's applied
  for all screen sizes.
