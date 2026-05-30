# Portal

<https://mui.com/material-ui/api/portal/>

## Usage

``` r
Portal(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is - The children to render into the container.

- container `HTML element| func`  
  Default is - An HTML element or function that returns one. The
  container will have the portal children appended to it.You can also
  provide a callback, which is called in a React layout effect. This
  lets you set the container from a ref, and also makes server-side
  rendering possible.By default, it uses the body of the top-level
  document object, so it's simply document.body most of the time.

- disablePortal `bool`  
  Default is FALSE The children will be under the DOM hierarchy of the
  parent component.
