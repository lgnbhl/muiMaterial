# Link

<https://mui.com/material-ui/api/link/>

## Usage

``` r
Link(...)
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

- color
  `'primary'| 'secondary'| 'success'| 'error'| 'info'| 'warning'| 'textPrimary'| 'textSecondary'| 'textDisabled'| string`  
  Default is 'primary' The color of the link.

- component `element type`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.This needs to be able to hold a ref.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- TypographyClasses `object`  
  Default is - classes prop applied to the Typography element.

- underline `'always'| 'hover'| 'none'`  
  Default is 'always' Controls when the link should have an underline.

- variant
  `'body1'| 'body2'| 'button'| 'caption'| 'h1'| 'h2'| 'h3'| 'h4'| 'h5'| 'h6'| 'inherit'| 'overline'| 'subtitle1'| 'subtitle2'| string`  
  Default is 'inherit' Applies the theme typography styles.
