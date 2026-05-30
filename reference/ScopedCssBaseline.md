# ScopedCssBaseline

<https://mui.com/material-ui/api/scoped-css-baseline/>

## Usage

``` r
ScopedCssBaseline(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is NA The content of the component.

- classes `object`  
  Default is NA Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is NA The component used for the root node. Either a string to
  use a HTML element or a component.

- enableColorScheme `bool`  
  Default is NA Enable color-scheme CSS property to use
  theme.palette.mode. For more details, check out
  https://developer.mozilla.org/en-US/docs/Web/CSS/color-scheme For
  browser support, check out https://caniuse.com/?search=color-scheme

- sx `Array func| object| bool | func| object`  
  Default is NA The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
