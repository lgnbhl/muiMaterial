# Modal.triggerId

Custom Modal bound to a DOM element by id. See
'js/src/MuiModalTriggerId.jsx'. Open/close state is managed entirely
client-side.

## Usage

``` r
Modal.triggerId(triggerId, ...)
```

## Arguments

- triggerId:

  HTML id of an existing DOM element that acts as the trigger to open
  the Modal.

- ...:

  Named arguments forwarded as React props, plus children to render
  inside the component.

## Value

Object with \`shiny.tag\` class suitable for use in the UI of a Shiny
app.
