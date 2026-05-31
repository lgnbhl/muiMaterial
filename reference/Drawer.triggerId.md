# Drawer.triggerId

Custom Drawer bound to a DOM element by id. See
'js/src/MuiDrawerTriggerId.jsx'.

## Usage

``` r
Drawer.triggerId(triggerId, ...)
```

## Arguments

- triggerId:

  HTML id of an existing DOM element that acts as the trigger (button,
  link, etc.) to open the Drawer.

- ...:

  Named arguments forwarded as React props, plus children to render
  inside the component. Pass `closeOnLinkClick = FALSE` to keep the
  Drawer open when any link inside it is clicked. The default (`TRUE`)
  closes the Drawer on any `<a>` click, including external links with
  `target = "_blank"`.

## Value

Object with \`shiny.tag\` class suitable for use in the UI of a Shiny
app.

## Examples

``` r
if (FALSE) { # interactive()
library(shiny)
library(muiMaterial)

ui <- muiMaterialPage(
  Button(id = "openDrawer", "Open drawer"),
  Drawer.triggerId("openDrawer", anchor = "left", "Drawer content here")
)

shinyApp(ui, function(input, output, session) {})
}
```
