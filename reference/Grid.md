# Grid

<https://mui.com/material-ui/api/grid/>

## Usage

``` r
Grid(...)
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
  `'column-reverse'| 'column'| 'row-reverse'| 'row'| Array 'column-reverse'| 'column'| 'row-reverse'| 'row' | object`  
  Default is 'row' Defines the flex-direction style property. It is
  applied for all screen sizes.

- offset `string| number| Array string| number | object`  
  Default is - Defines the offset value for the type item components.

- rowSpacing `Array number| string | number| object| string`  
  Default is - Defines the vertical space between the type item
  components. It overrides the value of the spacing prop.

- size `string| bool| number| Array string| bool| number | object`  
  Default is - Defines the size of the the type item components.

- spacing `Array number| string | number| object| string`  
  Default is 0 Defines the space between the type item components. It
  can only be used on a type container component.

- wrap `'nowrap'| 'wrap-reverse'| 'wrap'`  
  Default is 'wrap' Defines the flex-wrap style property. It's applied
  for all screen sizes.
