# LoadingButton

<https://mui.com/material-ui/api/loading-button/>

## Usage

``` r
LoadingButton(...)

LoadingButton.shinyInput(inputId, ...)

updateLoadingButton.shinyInput(
  session = shiny::getDefaultReactiveDomain(),
  inputId,
  ...
)
```

## Arguments

- ...:

  Props to pass to the component.

- inputId:

  ID of the component.

- session:

  Object passed as the \`session\` argument to Shiny server.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
