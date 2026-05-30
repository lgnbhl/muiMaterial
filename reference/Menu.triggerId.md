# Menu.triggerId

Custom Menu bound to a DOM element by id. See
'js/src/MuiMenuTriggerId.jsx'.

## Usage

``` r
Menu.triggerId(triggerId, ...)
```

## Arguments

- triggerId:

  HTML id of an existing DOM element that acts as the trigger (button,
  link, etc.) to open the Menu.

- ...:

  Named arguments forwarded as React props, plus children to render
  inside the component. Pass \`closeOnItemClick = FALSE\` to keep the
  menu open after a click.

## Value

Object with \`shiny.tag\` class suitable for use in the UI of a Shiny
app.

## Details

Pass \`closeOnItemClick = FALSE\` to disable auto-close on click (useful
when the menu contains interactive children like checkboxes).
