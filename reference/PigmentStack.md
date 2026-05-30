# PigmentStack

<https://mui.com/material-ui/api/pigment-stack/>

## Usage

``` r
PigmentStack(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is - The content of the component.

- direction
  `'column-reverse'| 'column'| 'row-reverse'| 'row'| Array 'column-reverse'| 'column'| 'row-reverse'| 'row' | { lg?: 'column-reverse'| 'column'| 'row-reverse'| 'row', md?: 'column-reverse'| 'column'| 'row-reverse'| 'row', sm?: 'column-reverse'| 'column'| 'row-reverse'| 'row', xl?: 'column-reverse'| 'column'| 'row-reverse'| 'row', xs?: 'column-reverse'| 'column'| 'row-reverse'| 'row' }`  
  Default is 'column' Defines the flex-direction style property. It is
  applied for all screen sizes.

- divider `node`  
  Default is - Add an element between each child.

- spacing
  `Array number| string | number| { lg?: number| string, md?: number| string, sm?: number| string, xl?: number| string, xs?: number| string }| string`  
  Default is 0 Defines the space between immediate children.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop, which allows defining system overrides
  as well as additional CSS styles.See the `sx` page for more details.
