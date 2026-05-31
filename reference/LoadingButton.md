# LoadingButton

<https://mui.com/material-ui/react-button/>

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

## Note

`LoadingButton` is part of
[`@mui/lab`](https://mui.com/material-ui/about-the-lab/), which is
published on the MUI beta channel. Lab APIs may change in future minor
releases.
