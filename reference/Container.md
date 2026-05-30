# Container

<https://mui.com/material-ui/api/container/>

## Usage

``` r
Container(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- disableGutters `bool`  
  Default is FALSE If true, the left and right padding is removed.

- fixed `bool`  
  Default is FALSE Set the max-width to match the min-width of the
  current breakpoint. This is useful if you'd prefer to design for a
  fixed set of sizes instead of trying to accommodate a fully fluid
  viewport. It's fluid by default.

- maxWidth `'xs'| 'sm'| 'md'| 'lg'| 'xl'| false| string`  
  Default is 'lg' Determine the max-width of the container. The
  container width grows with the size of the screen. Set to false to
  disable maxWidth.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
