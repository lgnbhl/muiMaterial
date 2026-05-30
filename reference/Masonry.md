# Masonry

<https://mui.com/material-ui/api/masonry/>

## Usage

``` r
Masonry(...)
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

- columns `Array number| string | number| object| string`  
  Default is 4 Number of columns.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- defaultColumns `number`  
  Default is - The default number of columns of the component. This is
  provided for server-side rendering.

- defaultHeight `number`  
  Default is - The default height of the component in px. This is
  provided for server-side rendering.

- defaultSpacing `number`  
  Default is - The default spacing of the component. Like spacing, it is
  a factor of the theme's spacing. This is provided for server-side
  rendering.

- sequential `bool`  
  Default is FALSE Allows using sequential order rather than adding to
  shortest column

- spacing `Array number| string | number| object| string`  
  Default is 1 Defines the space between children. It is a factor of the
  theme's spacing.

- sx `Array func| object| bool | func| object`  
  Default is - Allows defining system overrides as well as additional
  CSS styles.See the `sx` page for more details.
