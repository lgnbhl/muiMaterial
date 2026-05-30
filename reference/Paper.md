# Paper

<https://mui.com/material-ui/api/paper/>

## Usage

``` r
Paper(...)
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

- elevation `integer`  
  Default is 1 Shadow depth, corresponds to dp in the spec. It accepts
  values between 0 and 24 inclusive.

- square `bool`  
  Default is FALSE If true, rounded corners are disabled.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- variant `'elevation'| 'outlined'| string`  
  Default is 'elevation' The variant to use.
