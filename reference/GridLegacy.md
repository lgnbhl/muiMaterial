# GridLegacy

<https://mui.com/material-ui/api/grid-legacy/>

## Usage

``` r
GridLegacy(...)
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

- columns `Array number | number| object`  
  Default is 12 The number of columns.

- columnSpacing `Array number| string | number| object| string`  
  Default is - Defines the horizontal space between the type item
  components. It overrides the value of the spacing prop.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- container `bool`  
  Default is FALSE If true, the component will have the flex container
  behavior. You should be wrapping items with a container.

- direction
  `'column-reverse'| 'column'| 'row-reverse'| 'row'| Array 'column-reverse'| 'column'| 'row-reverse'| 'row' | object`  
  Default is 'row' Defines the flex-direction style property. It is
  applied for all screen sizes.

- item `bool`  
  Default is FALSE If true, the component will have the flex item
  behavior. You should be wrapping items with a container.

- lg `'auto'| number| bool`  
  Default is FALSE If a number, it sets the number of columns the grid
  item uses. It can't be greater than the total number of columns of the
  container (12 by default). If 'auto', the grid item's width matches
  its content. If false, the prop is ignored. If true, the grid item's
  width grows to use the space available in the grid container. The
  value is applied for the lg breakpoint and wider screens if not
  overridden.

- md `'auto'| number| bool`  
  Default is FALSE If a number, it sets the number of columns the grid
  item uses. It can't be greater than the total number of columns of the
  container (12 by default). If 'auto', the grid item's width matches
  its content. If false, the prop is ignored. If true, the grid item's
  width grows to use the space available in the grid container. The
  value is applied for the md breakpoint and wider screens if not
  overridden.

- rowSpacing `Array number| string | number| object| string`  
  Default is - Defines the vertical space between the type item
  components. It overrides the value of the spacing prop.

- sm `'auto'| number| bool`  
  Default is FALSE If a number, it sets the number of columns the grid
  item uses. It can't be greater than the total number of columns of the
  container (12 by default). If 'auto', the grid item's width matches
  its content. If false, the prop is ignored. If true, the grid item's
  width grows to use the space available in the grid container. The
  value is applied for the sm breakpoint and wider screens if not
  overridden.

- spacing `Array number| string | number| object| string`  
  Default is 0 Defines the space between the type item components. It
  can only be used on a type container component.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- wrap `'nowrap'| 'wrap-reverse'| 'wrap'`  
  Default is 'wrap' Defines the flex-wrap style property. It's applied
  for all screen sizes.

- xl `'auto'| number| bool`  
  Default is FALSE If a number, it sets the number of columns the grid
  item uses. It can't be greater than the total number of columns of the
  container (12 by default). If 'auto', the grid item's width matches
  its content. If false, the prop is ignored. If true, the grid item's
  width grows to use the space available in the grid container. The
  value is applied for the xl breakpoint and wider screens if not
  overridden.

- xs `'auto'| number| bool`  
  Default is FALSE If a number, it sets the number of columns the grid
  item uses. It can't be greater than the total number of columns of the
  container (12 by default). If 'auto', the grid item's width matches
  its content. If false, the prop is ignored. If true, the grid item's
  width grows to use the space available in the grid container. The
  value is applied for all the screen sizes with the lowest priority.

- zeroMinWidth `bool`  
  Default is FALSE If true, it sets min-width: 0 on the item. Refer to
  the limitations section of the documentation to better understand the
  use case.
