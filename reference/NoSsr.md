# NoSsr

<https://mui.com/material-ui/api/no-ssr/>

## Usage

``` r
NoSsr(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is - You can wrap a node.

- defer `bool`  
  Default is FALSE If true, the component will not only prevent
  server-side rendering. It will also defer the rendering of the
  children into a different screen frame.

- fallback `node`  
  Default is null The fallback content to display.
